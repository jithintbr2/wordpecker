import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:woodle/core/cubits/authentication/authentication_cubit.dart';
import 'package:woodle/core/settings/assets.dart';
import 'package:woodle/core/settings/config.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: [
          HomeDrawerHeader(),
          DrawerTopBar(),
          Divider(),
          Expanded(child: DrawerBody()),
          Divider(),
          DrawerBottomBar()
        ],
      ),
    );
  }
}

class HomeDrawerHeader extends StatelessWidget {
  const HomeDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(Assets.homeDrawerBackground), fit: BoxFit.cover),
      ),
      height: 200,
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
          Icon(icon),
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

class DrawerTopBar extends StatelessWidget {
  const DrawerTopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _view = SizedBox();
    return BlocBuilder<AuthenticationCubit, AuthenticationState>(
        builder: (context, state) {
      if (state.user != null)
        _view = Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              TextIconButton(icon: Icons.track_changes, title: "My Orders"),
              TextIconButton(icon: Icons.shopping_cart, title: "View Cart"),
              TextIconButton(icon: Icons.notifications, title: "Notifications")
            ],
          ),
        );
      else
        _view = Text('working baby');
      return _view;
    });
  }
}

class DrawerBottomBar extends StatelessWidget {
  const DrawerBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          TextIconButton(icon: Icons.chat_bubble_outline, title: "WhatsApp"),
          TextIconButton(icon: Icons.info_outline, title: "About Us"),
          TextIconButton(icon: Icons.language, title: "Conntact Us")
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
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.all(0),
      children: [
        _itemTile(context, Icons.line_style, "My Addresses",
            onTap: () => Navigator.pushNamed(context, '/address')),
        _itemTile(context, Icons.notifications, "Notification",
            onTap: () => Navigator.pushNamed(context, '/profile')),
        _itemTile(context, Icons.track_changes, "My Orders",
            onTap: () => Navigator.pushNamed(context, '/orders')),
        _itemTile(context, Icons.vpn_key, "Change Password"),
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
