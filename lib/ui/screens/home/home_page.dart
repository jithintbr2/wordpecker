import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/models/address/address_model.dart';
import 'package:woodle/core/models/home_page/home_page_model.dart';
import 'package:woodle/core/services/cart.dart';
import 'package:woodle/core/services/storage.dart';
import 'package:woodle/core/settings/config.dart';
import 'package:woodle/ui/screens/home/bloc/home_bloc.dart';
import 'package:woodle/ui/screens/home/widgets/appbar.dart';
import 'package:woodle/ui/screens/home/widgets/drawer.dart';
import 'package:woodle/ui/widgets/carousel.dart';
import 'package:woodle/ui/widgets/category.dart';
import 'package:woodle/ui/widgets/empty.dart';
import 'package:woodle/ui/widgets/failed.dart';
import 'package:woodle/ui/widgets/loading.dart';
import 'package:woodle/ui/widgets/marquee.dart';

class HomePage extends HookWidget {
  final LocalStorage localStorage;
  const HomePage({Key? key, required this.localStorage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CartService service = CartService();
    AddressModel? _getAddress() {
      if (localStorage.get('currentAddress') != null) {
        Map<String, dynamic> currentAddressRaw =
            jsonDecode(localStorage.get('currentAddress') as String);
        print(currentAddressRaw);
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

    return Scaffold(
      appBar: HomeAppBar(
        service: service,
        showLocation: true,
        location: address?.locality,
        onTap: () => Navigator.pushNamed(context, '/address'),
        onSearch: () => Navigator.pushNamed(context, '/homeSearch'),
      ),
      drawer: HomeDrawer(),
      body: Config.locationId != -1 || address != null
          ? _buildBloc(address)
          : EmptyView(
              icon: Icons.location_searching, title: 'No Location Selected.'),
    );
  }

  _buildBloc(AddressModel? address) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return state.when(
            loading: () => LoadingView(),
            loaded: (data) => RefreshIndicator(
                child: _buildPage(context, data),
                onRefresh: () async {
                  context.read<HomeBloc>().add(HomeEvent.fetchData(
                      address != null
                          ? address.franchiseId
                          : Config.locationId));
                  return null;
                }),
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
    return ListView(
      children: [
        Carousel(items: data.carouselx1 ?? []),
        SizedBox(height: 10),
        MarqueeWidget(text: data.message ?? ''),
        Category(
          title: 'Items',
          items: data.itemCategories ?? [],
          limit: Config.itemCategoriesLimit,
          onTap: (index) =>
              Navigator.of(context).pushNamed('/itemList', arguments: {
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
        Carousel(items: data.carouselx2 ?? [])
      ],
    );
  }
}
