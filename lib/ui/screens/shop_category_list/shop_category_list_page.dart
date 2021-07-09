import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/models/address/address_model.dart';
import 'package:woodle/core/models/shop/shop_model.dart';
import 'package:woodle/core/services/storage.dart';
import 'package:woodle/core/settings/config.dart';
import 'package:woodle/ui/screens/shop_category_list/bloc/shop_category_list_bloc.dart';
import 'package:woodle/ui/widgets/empty.dart';
import 'package:woodle/ui/widgets/failed.dart';
import 'package:woodle/ui/widgets/loading.dart';
import 'package:woodle/ui/widgets/shop_tile.dart';

class ShopCategoryListPage extends HookWidget {
  final int categoryId;
  final String categoryName;
  final LocalStorage localStorage;
  const ShopCategoryListPage({
    Key? key,
    required this.categoryId,
    required this.categoryName,
    required this.localStorage,
  }) : super(key: key);

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
        context.read<ShopCategoryListBloc>().add(
            ShopCategoryListEvent.fetchData(
                address != null ? address.franchiseId : Config.locationId,
                categoryId));
    }, []);
    return Scaffold(
      appBar: AppBar(title: Text(categoryName)),
      body: RefreshIndicator(
          onRefresh: () async {
            context.read<ShopCategoryListBloc>().add(
                ShopCategoryListEvent.fetchData(
                    address != null ? address.franchiseId : Config.locationId,
                    categoryId));
            return null;
          },
          child: _buildBloc(
              address != null ? address.franchiseId : Config.locationId)),
    );
  }

  Widget _buildBloc(int franchiseId) {
    return BlocBuilder<ShopCategoryListBloc, ShopCategoryListState>(
      builder: (context, state) {
        return state.when(
            loading: () => LoadingView(),
            loaded: (data) => _buildPage(data),
            failed: (exceptions) => FailedView(
                exceptions: exceptions,
                onRetry: () => context.read<ShopCategoryListBloc>().add(
                    ShopCategoryListEvent.fetchData(franchiseId, categoryId))));
      },
    );
  }

  Widget _buildPage(List<ShopModel> data) {
    if (data.isNotEmpty)
      return ListView.builder(
        itemBuilder: (context, index) => ShopTile(shop: data[index]),
        itemCount: data.length,
      );
    return EmptyView(
        icon: Icons.shopping_basket, title: 'No Restaurants Available');
  }
}
