import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/models/address/address_model.dart';
import 'package:woodle/core/models/user/user_model.dart';
import 'package:woodle/core/services/cart.dart';
import 'package:woodle/core/services/storage.dart';
import 'package:woodle/core/settings/config.dart';
import 'package:woodle/ui/screens/home/home_page.dart';
import 'package:woodle/ui/screens/home/widgets/appbar.dart';
import 'package:woodle/ui/screens/home/widgets/bottom_appbar.dart';
import 'package:woodle/ui/screens/home/widgets/drawer.dart';
import 'package:woodle/ui/screens/service/service_page.dart';

class DashboardPage extends HookWidget {
  final UserModel? user;
  final LocalStorage localStorage;
  const DashboardPage({Key? key, required this.localStorage, this.user})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CartService service = CartService();
    final _currentTabIndex = useState(0);
    GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

    AddressModel? _getAddress() {
      if (localStorage.get('currentAddress') != null) {
        Map<String, dynamic> currentAddressRaw =
            jsonDecode(localStorage.get('currentAddress') as String);
        return AddressModel.fromJson(currentAddressRaw);
      }
      return null;
    }

    AddressModel? address = _getAddress();

    return Scaffold(
      key: _scaffoldKey,
      appBar: HomeAppBar(
        user: user,
        service: service,
        showLocation: Config.isMultiLocation,
        location: address?.locality,
        onTap: () => Navigator.pushNamed(context, '/address'),
        onSearch: () => Navigator.pushNamed(context, '/homeSearch'),
      ),
      endDrawer: HomeDrawer(),
      bottomNavigationBar: HomeBottomNavigationBar(
        currenTabIndex: _currentTabIndex.value,
        onTap: (index) {
          if (index == 3)
            _scaffoldKey.currentState?.openEndDrawer();
          else
            _currentTabIndex.value = index;
        },
      ),
      body: _buildPage(_currentTabIndex.value),
    );
  }

  Widget _buildPage(int currentTabIndex) {
    if (currentTabIndex == 1) return Container();
    if (currentTabIndex == 2)
      return ServicePage(
        localStorage: LocalStorage(),
      );
    return HomePage(
      localStorage: LocalStorage(),
    );
  }
}