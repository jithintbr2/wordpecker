import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/models/address/address_model.dart';
import 'package:woodle/core/models/custom_page/custom_page_model.dart';
import 'package:woodle/core/services/storage.dart';
import 'package:woodle/core/settings/config.dart';
import 'package:woodle/ui/screens/custom/bloc/custom_bloc.dart';
import 'package:woodle/ui/widgets/carousel.dart';
import 'package:woodle/ui/widgets/empty.dart';
import 'package:woodle/ui/widgets/failed.dart';
import 'package:woodle/ui/widgets/loading.dart';
import 'package:woodle/ui/widgets/marquee.dart';
import 'package:woodle/ui/widgets/shop_tile.dart';

class CustomPage extends HookWidget {
  final LocalStorage localStorage;
  const CustomPage({Key? key, required this.localStorage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        context.read<CustomBloc>().add(CustomEvent.fetchData(
            address != null ? address.franchiseId : Config.locationId));
    }, []);

    if (Config.locationId != -1 || address != null)
      return BlocBuilder<CustomBloc, CustomState>(builder: (context, state) {
        return state.when(
            loading: () => LoadingView(),
            loaded: (data) => RefreshIndicator(
                child: _buildPage(context, data),
                onRefresh: () async {
                  context.read<CustomBloc>().add(CustomEvent.fetchData(
                      address != null
                          ? address.franchiseId
                          : Config.locationId));
                  return null;
                }),
            failed: (error) => FailedView(
                exceptions: error,
                onRetry: () {
                  context.read<CustomBloc>().add(CustomEvent.fetchData(
                      address != null
                          ? address.franchiseId
                          : Config.locationId));
                }));
      });

    return EmptyView(
        icon: Icons.location_searching, title: 'No Location Selected.');
  }

  Widget _buildPage(BuildContext context, CustomPageModel data) {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(vertical: 10),
      children: [
        Carousel(items: data.carouselx1 ?? [], viewportFraction: 1),
        SizedBox(height: 10),
        MarqueeWidget(text: data.message ?? ''),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Carousel(items: data.carouselx2 ?? [], viewportFraction: 1)),
        SizedBox(height: 10),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Carousel(items: data.carouselx3 ?? [], viewportFraction: 1)),
        SizedBox(height: 10),
        ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) => ShopTile(shop: data.shops!),
          itemCount: data.shops!.length,
          physics: NeverScrollableScrollPhysics(),
        ),
        SizedBox(height: 10),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Carousel(items: data.carouselx4 ?? [], viewportFraction: 1)),
        SizedBox(height: 60)
      ],
    );
  }
}
