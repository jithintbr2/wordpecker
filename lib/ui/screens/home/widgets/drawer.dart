import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:woodle/core/cubits/authentication/authentication_cubit.dart';
import 'package:woodle/core/models/address/address_model.dart';
import 'package:woodle/core/services/storage.dart';
import 'package:woodle/core/settings/assets.dart';
import 'package:woodle/core/settings/config.dart';
import 'package:woodle/ui/screens/home/bloc/home_bloc.dart';

class HomeDrawer extends StatelessWidget {
  final int? whatsappNumber;
  const HomeDrawer({Key? key, this.whatsappNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(child: BlocBuilder<AuthenticationCubit, AuthenticationState>(
        builder: (context, state) {
      return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            HomeDrawerHeader(),
            state.updateAvailable ? UpdateTile() : SizedBox(),
            state.user != null
                ? Wrap(
                    children: [
                      DrawerTopBar(
                        name: state.user?.name ?? '',
                      ),
                      Divider(),
                    ],
                  )
                : SizedBox(),
            state.user != null
                ? Expanded(child: DrawerBody())
                : Expanded(
                    child: Center(
                    child: ElevatedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/authenticate'),
                        child: Text('Login')),
                  )),
            Divider(),
            DrawerBottomBar(whatsappNumber: whatsappNumber)
          ]);
    }));
  }
}

class UpdateTile extends StatelessWidget {
  const UpdateTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Theme.of(context).primaryColor,
      leading: Icon(Icons.update, color: Theme.of(context).canvasColor),
      title: Text('Update Available',
          style: TextStyle(color: Theme.of(context).canvasColor)),
      trailing: Icon(Icons.chevron_right, color: Theme.of(context).canvasColor),
    );
  }
}

class HomeDrawerHeader extends StatelessWidget {
  const HomeDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(Assets.homeDrawerBackground), fit: BoxFit.cover),
      ),
      height: 170,
      child: Column(
        children: [
          SizedBox(height: 49),
          Image.asset(
            Assets.appIcon,
            height: 80,
            width: 150,
            fit: BoxFit.contain,
          ),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}

class TextIconButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final void Function()? onTap;
  const TextIconButton(
      {required this.icon, required this.title, this.onTap, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        children: [
          Icon(icon, color: Config.drawerIconColor),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}

// class DrawerTopBar extends StatelessWidget {
//   const DrawerTopBar({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(vertical: 16),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         mainAxisSize: MainAxisSize.max,
//         children: [
//           TextIconButton(icon: Icons.track_changes, title: "My Orders"),
//           TextIconButton(icon: Icons.shopping_cart, title: "View Cart"),
//           TextIconButton(
//             icon: Icons.notifications,
//             title: "Notifications",
//             onTap: () => Navigator.pushNamed(context, '/notifications'),
//           )
//         ],
//       ),
//     );
//   }
// }

class DrawerTopBar extends StatelessWidget {
  final String name;
  const DrawerTopBar({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      trailing: IconButton(
          onPressed: () {
            showDialog<bool>(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext dialogContext) {
                return AlertDialog(
                  title: Text('Logout'),
                  content: Text('Are you sure you want to logout?'),
                  actions: <Widget>[
                    TextButton(
                        child: Text('No'),
                        onPressed: () => Navigator.of(dialogContext).pop()),
                    TextButton(
                      child: Text('Yes'),
                      onPressed: () {
                        Navigator.of(dialogContext).pop();
                        context.read<HomeBloc>().add(HomeEvent.logout());
                        context
                            .read<AuthenticationCubit>()
                            .changeState(user: null);
                      },
                    ),
                  ],
                );
              },
            );
          },
          icon: Icon(Icons.logout)),
    );
  }
}

class DrawerBottomBar extends StatelessWidget {
  final int? whatsappNumber;
  const DrawerBottomBar({Key? key, this.whatsappNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          TextIconButton(
              icon: Icons.chat_bubble_outline,
              title: "WhatsApp",
              onTap: () async {
                final whatsappLink =
                    "https://api.WhatsApp.com/send?phone=$whatsappNumber";
                if (await canLaunch(whatsappLink)) await launch(whatsappLink);
              }),
          TextIconButton(
              icon: Icons.info_outline,
              title: "About Us",
              onTap: () => Navigator.pushNamed(context, '/webView',
                  arguments: {"title": "About Us", "url": Config.aboutUs})),
          TextIconButton(
              icon: Icons.language,
              title: "Contact Us",
              onTap: () => Navigator.pushNamed(context, '/webView',
                  arguments: {"title": "About Us", "url": Config.aboutUs}))
        ],
      ),
    );
  }
}

class DrawerBody extends StatelessWidget {
  const DrawerBody({Key? key}) : super(key: key);

  Widget _itemTile(context, icon, text, {onTap}) {
    return ListTile(
      dense: true,
      leading: Icon(
        icon,
        color: Config.drawerIconColor,
        size: 20,
      ),
      title: Text(
        text,
        style: Theme.of(context).textTheme.bodyText2,
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 12,
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    LocalStorage _localStorage = LocalStorage();
    AddressModel? _getAddress() {
      if (_localStorage.get('currentAddress') != null) {
        Map<String, dynamic> currentAddressRaw =
            jsonDecode(_localStorage.get('currentAddress') as String);
        return AddressModel.fromJson(currentAddressRaw);
      }
      return null;
    }

    int franchieId = -1;
    final address = _getAddress();
    franchieId = address != null ? address.franchiseId : -1;

    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.all(0),
      children: [
        Config.useDashboardEntry
            ? SizedBox()
            : _itemTile(context, Icons.room_service, "Services",
                onTap: () => Navigator.pushNamed(context, '/services')),
        _itemTile(context, Icons.line_style, "My Addresses",
            onTap: () => Navigator.pushNamed(context, '/address')),
        _itemTile(context, Icons.notifications, "My Notifications",
            onTap: () => Navigator.pushNamed(context, '/notifications')),
        _itemTile(context, Icons.track_changes, "My Orders",
            onTap: () => Navigator.pushNamed(context, '/orders')),
        _itemTile(context, Icons.request_quote, "Request Items",
            onTap: () => franchieId == -1
                ? showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                          title: Text("Select Location"),
                          content: Text(
                              "Please Select a location to access this feature"),
                          actions: <Widget>[
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                                Navigator.pushNamed(context, '/address');
                              },
                              child: Text("okay"),
                            ),
                          ],
                        ))
                : Navigator.pushNamed(context, '/requestItems')),
        _itemTile(context, Icons.account_balance_wallet, "Wallet",
            onTap: () => Navigator.pushNamed(context, '/wallet')),
        _itemTile(context, Icons.share, "Refer and Earn",
            onTap: () => Navigator.pushNamed(context, '/referral')),
        Divider(color: Theme.of(context).accentColor.withOpacity(0.5)),
        _itemTile(context, Icons.password, "Change Password",
            onTap: () => Navigator.pushNamed(context, '/changePassword')),
        Divider(color: Theme.of(context).accentColor.withOpacity(0.5)),
        _itemTile(context, Icons.local_atm, "Cancellation & Refund Policy",
            onTap: () => Navigator.pushNamed(context, '/webView', arguments: {
                  "title": "Cancellation & Refund Policy",
                  "url": Config.cancellationPolicy
                })),
        _itemTile(context, Icons.security, "Privacy T&C",
            onTap: () => Navigator.pushNamed(context, '/webView', arguments: {
                  "title": "Privacy T&C",
                  "url": Config.termsConditions
                })),
      ],
    );
  }
}
