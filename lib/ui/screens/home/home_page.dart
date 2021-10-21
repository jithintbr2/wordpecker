import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/cubits/authentication/authentication_cubit.dart';
import 'package:woodle/core/models/address/address_model.dart';
import 'package:woodle/core/models/home_page/home_page_model.dart';
import 'package:woodle/core/services/cart.dart';
import 'package:woodle/core/services/storage.dart';
import 'package:woodle/core/settings/assets.dart';
import 'package:woodle/core/settings/config.dart';
import 'package:woodle/ui/screens/home/bloc/home_bloc.dart';
import 'package:woodle/ui/screens/home/widgets/appbar.dart';
import 'package:woodle/ui/screens/home/widgets/drawer.dart';
import 'package:woodle/ui/screens/home/widgets/special_offers.dart';
import 'package:woodle/ui/widgets/carousel.dart';
import 'package:woodle/ui/widgets/category.dart';
import 'package:woodle/ui/widgets/empty.dart';
import 'package:woodle/ui/widgets/failed.dart';
import 'package:woodle/ui/widgets/loading.dart';
import 'package:woodle/ui/widgets/marquee.dart';
import 'package:woodle/ui/widgets/shop_card.dart';

class HomePage extends HookWidget {
  final LocalStorage localStorage;
  final ValueNotifier<int>? dashboardContactNumber;
  const HomePage(
      {Key? key, required this.localStorage, this.dashboardContactNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CartService service = CartService();
    AddressModel? _getAddress() {
      if (localStorage.get('currentAddress') != null) {
        Map<String, dynamic> currentAddressRaw =
            jsonDecode(localStorage.get('currentAddress') as String);
        return AddressModel.fromJson(currentAddressRaw);
      }
      return null;
    }

    AddressModel? address = _getAddress();
    useEffect(() {
      if (Config.locationId != -1 || address != null)
        context.read<HomeBloc>().add(HomeEvent.fetchData(
            address != null ? address.franchiseId : Config.locationId));
    }, []);

    final conactNumber = useState(-1);
    final popupSeen = useState(false);

    return Scaffold(
      appBar: Config.useDashboardEntry
          ? null
          : HomeAppBar(
              user: context.read<AuthenticationCubit>().state.user,
              service: service,
              showLocation: Config.isMultiLocation,
              location: address?.locality,
              contactNumber: conactNumber.value,
              onTap: () => Navigator.pushNamed(context, '/address'),
              onSearch: () => Navigator.pushNamed(context, '/homeSearch'),
            ),
      endDrawer: HomeDrawer(whatsappNumber: conactNumber.value),
      body: Config.locationId != -1 || address != null
          ? _buildBloc(
              address, dashboardContactNumber ?? conactNumber, popupSeen)
          : EmptyView(
              icon: Icons.location_searching, title: 'No Location Selected.'),
    );
  }

  _buildBloc(AddressModel? address, ValueNotifier conactNumber,
      ValueNotifier popupSeen) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return state.when(
            loading: () => LoadingView(),
            loaded: (data) {
              conactNumber.value = data.contactNumber;
              if (data.popupImage != null && !popupSeen.value) {
                WidgetsBinding.instance!.addPostFrameCallback((_) {
                  showDialog<bool>(
                      context: context,
                      barrierDismissible: true,
                      builder: (BuildContext dialogContext) {
                        return Dialog(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Card(
                                  margin: EdgeInsets.all(2),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Stack(
                                      fit: StackFit.loose,
                                      children: <Widget>[
                                        Align(
                                            alignment: Alignment.center,
                                            child: InkWell(
                                              onTap: () async {},
                                              child: CachedNetworkImage(
                                                imageUrl: data.popupImage!,
                                                placeholder: (context, url) {
                                                  return SizedBox();
                                                },
                                                errorWidget:
                                                    (context, url, error) {
                                                  return Image.asset(
                                                    Assets.appIcon,
                                                    fit: BoxFit.fitHeight,
                                                  );
                                                },
                                                fit: BoxFit.cover,
                                              ),
                                            )),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: ElevatedButton(
                                            child: Icon(Icons.close),
                                            onPressed: () {
                                              popupSeen.value = true;
                                              Navigator.of(dialogContext).pop();
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                });
              }
              return RefreshIndicator(
                  child: _buildPage(context, data),
                  onRefresh: () async {
                    context.read<HomeBloc>().add(HomeEvent.fetchData(
                        address != null
                            ? address.franchiseId
                            : Config.locationId));
                    return null;
                  });
            },
            failed: (error) => FailedView(
                exceptions: error,
                onRetry: () {
                  context.read<HomeBloc>().add(HomeEvent.fetchData(
                      address != null
                          ? address.franchiseId
                          : Config.locationId));
                }));
      },
    );
  }

  _buildPage(BuildContext context, HomePageModel data) {
    return Stack(
      children: [
        ListView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(vertical: 10),
          children: [
            Carousel(items: data.carouselx1 ?? [], viewportFraction: 1),
            SizedBox(height: 10),
            MarqueeWidget(text: data.message ?? ''),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Carousel(
                    items: data.carouselx2 ?? [], viewportFraction: 1)),
            SizedBox(height: 10),
            Category(
              title: 'Items',
              items: data.itemCategories ?? [],
              limit: Config.itemCategoriesLimit,
              onTap: (index) =>
                  Navigator.of(context).pushNamed('/itemList', arguments: {
                "categories": data.itemCategories,
                "categoryName": data.itemCategories![index].title,
                "categoryId": data.itemCategories![index].id
              }),
            ),
            SizedBox(height: 10),
            Category(
              title: 'Shops',
              items: data.shopCategories ?? [],
              limit: Config.shopCategoriesLimit,
              onTap: (index) =>
                  Navigator.of(context).pushNamed('/shopList', arguments: {
                "categoryName": data.shopCategories![index].title,
                "categoryId": data.shopCategories![index].id
              }),
            ),
            SizedBox(height: 10),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Carousel(
                    items: data.carouselx3 ?? [], viewportFraction: 1)),
            SizedBox(height: 10),
            data.featuredRestaurants != null
                ? Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text("featured Restaurant",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            height: 2)))
                : SizedBox(),
            data.featuredRestaurants != null
                ? SizedBox(
                    height: 160,
                    child: ListView.builder(
                        itemBuilder: (_, int childIndex) => ShopCard(
                            shop: data.featuredRestaurants![childIndex]),
                        itemCount: data.featuredRestaurants!.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        padding: EdgeInsets.symmetric(horizontal: 10)),
                  )
                : SizedBox(),
            SizedBox(height: 10),
            SpecialOffers(data: data.homeCategoreis),
            SizedBox(height: 10),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Carousel(
                    items: data.carouselx4 ?? [], viewportFraction: 1)),
            SizedBox(height: 60)
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: data.isPendingOrders
              ? Container(
                  color: Theme.of(context).primaryColor,
                  child: ListTile(
                      leading: Icon(
                        Icons.card_giftcard,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Your orders are being processed.',
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () => Navigator.pushNamed(context, '/orders')),
                )
              : SizedBox(),
        )
      ],
    );
  }
}
