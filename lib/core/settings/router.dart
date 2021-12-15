import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:woodle/core/cubits/authentication/authentication_cubit.dart';
import 'package:woodle/core/repository/repository.dart';
import 'package:woodle/core/services/cart.dart';
import 'package:woodle/core/services/storage.dart';
// import 'package:woodle/ui/screens/address/address_page.dart';
import 'package:woodle/ui/screens/address/address_page_beta.dart';
import 'package:woodle/ui/screens/address/bloc/address_bloc.dart';
import 'package:woodle/ui/screens/address_map/address_map_page.dart';
import 'package:woodle/ui/screens/address_map/bloc/address_map_bloc.dart';
import 'package:woodle/ui/screens/authentication/authentication_page.dart';
import 'package:woodle/ui/screens/authentication/bloc/authenticationpage_bloc.dart';
import 'package:woodle/ui/screens/cart/cart_page.dart';
import 'package:woodle/ui/screens/category_items/bloc/category_items_bloc.dart';
import 'package:woodle/ui/screens/category_items/category_items_page.dart';
import 'package:woodle/ui/screens/custom/bloc/custom_bloc.dart';
import 'package:woodle/ui/screens/home/bloc/home_bloc.dart';
import 'package:woodle/ui/screens/home/dashboard_page.dart';
import 'package:woodle/ui/screens/home/home_page.dart';
import 'package:woodle/ui/screens/home_search/bloc/home_search_bloc.dart';
import 'package:woodle/ui/screens/home_search/home_search_page.dart';
import 'package:woodle/ui/screens/item/bloc/item_bloc.dart';
import 'package:woodle/ui/screens/item/item_page.dart';
import 'package:woodle/ui/screens/item_reviews/bloc/item_review_bloc.dart';
import 'package:woodle/ui/screens/notification/bloc/notification_bloc.dart';
import 'package:woodle/ui/screens/notification/notification_page.dart';
import 'package:woodle/ui/screens/order_cancel/bloc/order_cancel_bloc.dart';
import 'package:woodle/ui/screens/order_cancel/order_cancel_page.dart';
import 'package:woodle/ui/screens/order_details/bloc/order_details_bloc.dart';
import 'package:woodle/ui/screens/order_details/order_details_page.dart';
import 'package:woodle/ui/screens/order_preview/bloc/order_preview_bloc.dart';
import 'package:woodle/ui/screens/order_preview/bloc/place_order_button_bloc.dart';
import 'package:woodle/ui/screens/order_preview/order_preview_page.dart';
import 'package:woodle/ui/screens/orders/bloc/orders_bloc.dart';
import 'package:woodle/ui/screens/orders/orders_page.dart';
import 'package:woodle/ui/screens/password_change/bloc/password_change_bloc.dart';
import 'package:woodle/ui/screens/password_change/password_change_page.dart';
import 'package:woodle/ui/screens/referral/bloc/referral_bloc.dart';
import 'package:woodle/ui/screens/referral/referral_page.dart';
import 'package:woodle/ui/screens/request_item/bloc/request_item_bloc.dart';
import 'package:woodle/ui/screens/request_item/request_item_page.dart';
import 'package:woodle/ui/screens/service/bloc/service_bloc.dart';
import 'package:woodle/ui/screens/service/service_page.dart';
import 'package:woodle/ui/screens/shop/bloc/shop_bloc.dart';
import 'package:woodle/ui/screens/shop/shop_page.dart';
import 'package:woodle/ui/screens/shop_category_list/bloc/shop_category_list_bloc.dart';
import 'package:woodle/ui/screens/shop_category_list/shop_category_list_page.dart';
import 'package:woodle/ui/screens/shop_review/bloc/shop_review_bloc.dart';
import 'package:woodle/ui/screens/shop_review/shop_review_page.dart';
import 'package:woodle/ui/screens/splash/bloc/splash_bloc.dart';
import 'package:woodle/ui/screens/splash/splash_page.dart';
import 'package:woodle/ui/screens/wallet/bloc/wallet_bloc.dart';
import 'package:woodle/ui/screens/wallet/wallet_page.dart';
import 'package:woodle/ui/screens/wallet/wallet_redeem_page.dart';
import 'package:woodle/ui/screens/web_view/web_view_page.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _generatePlatformRoute(BlocProvider(
          create: (context) => SplashBloc(
              context: context,
              authenticationStatus: context.read<AuthenticationCubit>(),
              repository: context.read<ApplicationRepository>()),
          child: SplashPage(),
        ));

      case '/authenticate':
        return _generatePlatformRoute(BlocProvider(
          create: (context) => AuthenticationpageBloc(
              authenticationStatus: context.read<AuthenticationCubit>(),
              context: context,
              repository: context.read<ApplicationRepository>(),
              localStorage: LocalStorage()),
          child: AuthenticationPage(referredLink: null),
        ));

      case '/address':
        Map<String, dynamic> args = {};
        if (settings.arguments != null)
          args = settings.arguments as Map<String, dynamic>;
        return _generatePlatformRoute(BlocProvider(
          create: (context) => AddressBloc(
              context: context,
              localStorage: LocalStorage(),
              repository: context.read<ApplicationRepository>()),
          child: AddressPage(
            franchiseId: args['franchiseId'],
            returnToPrevious: args['returnToPrevious'],
          ),
        ));

      case '/addressMap':
        final Map<String, dynamic> args =
            settings.arguments as Map<String, dynamic>;
        return _generatePlatformRoute(BlocProvider(
          create: (context) => AddressMapBloc(
              context: context,
              localStorage: LocalStorage(),
              repository: context.read<ApplicationRepository>()),
          child: AddressMapPage(
            latitude: args['latitude'],
            longitude: args['longitude'],
            returnToPrevious: args['returnToPrevious'],
          ),
        ));

      case '/cart':
        return _generatePlatformRoute(CartPage());

      case '/changePassword':
        return _generatePlatformRoute(BlocProvider(
          create: (context) => PasswordChangeBloc(
              repository: context.read<ApplicationRepository>(),
              context: context),
          child: PasswordChangePage(),
        ));

      case '/home':
        return _generatePlatformRoute(BlocProvider(
            create: (context) => HomeBloc(
                context: context,
                localStorage: LocalStorage(),
                repository: context.read<ApplicationRepository>()),
            child: HomePage(
              localStorage: LocalStorage(),
            )));

      case '/homeDashboard':
        return _generatePlatformRoute(MultiBlocProvider(providers: [
          BlocProvider(
              create: (context) => CustomBloc(
                  repository: context.read<ApplicationRepository>())),
          BlocProvider(
              create: (context) => HomeBloc(
                  context: context,
                  localStorage: LocalStorage(),
                  repository: context.read<ApplicationRepository>())),
          BlocProvider(
              create: (context) => ServiceBloc(
                  repository: context.read<ApplicationRepository>())),
        ], child: DashboardPage(localStorage: LocalStorage())));

      case '/homeSearch':
        return _generatePlatformRoute(BlocProvider(
            create: (context) => HomeSearchBloc(
                repository: context.read<ApplicationRepository>()),
            child: HomeSearchPage(
              service: CartService(),
              localStorage: LocalStorage(),
            )));

      case '/item':
        final Map<String, dynamic> args =
            settings.arguments as Map<String, dynamic>;
        return _generatePlatformRoute(MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) =>
                    ItemBloc(repository: context.read<ApplicationRepository>()),
              ),
              BlocProvider(
                create: (context) => ItemReviewBloc(
                    repository: context.read<ApplicationRepository>()),
              ),
            ],
            child: ItemPage(
              itemId: args['itemId'],
              itemName: args['itemName'],
            )));

      case '/itemList':
        final Map<String, dynamic> args =
            settings.arguments as Map<String, dynamic>;
        return _generatePlatformRoute(BlocProvider(
          create: (context) => CategoryItemsBloc(
              repository: context.read<ApplicationRepository>()),
          child: CategoryItemsPage(
              categories: args['categories'],
              categoryId: args['categoryId'],
              categoryName: args['categoryName']),
        ));

      case '/services':
        return _generatePlatformRoute(BlocProvider(
            create: (context) =>
                ServiceBloc(repository: context.read<ApplicationRepository>()),
            child: ServicePage(
              localStorage: LocalStorage(),
            )));

      case '/shopDetail':
        final Map<String, dynamic> args =
            settings.arguments as Map<String, dynamic>;
        return _generatePlatformRoute(BlocProvider(
          create: (context) =>
              ShopBloc(repository: context.read<ApplicationRepository>()),
          child: ShopPage(
            shopId: args['shopId'],
          ),
        ));

      case '/shopList':
        final Map<String, dynamic> args =
            settings.arguments as Map<String, dynamic>;
        return _generatePlatformRoute(BlocProvider(
          create: (context) => ShopCategoryListBloc(
            repository: context.read<ApplicationRepository>(),
            context: context,
          ),
          child: ShopCategoryListPage(
              localStorage: LocalStorage(),
              categoryId: args['categoryId'],
              categoryName: args['categoryName']),
        ));

      case '/shopReview':
        final Map<String, dynamic> args =
            settings.arguments as Map<String, dynamic>;
        return _generatePlatformRoute(BlocProvider(
            create: (context) => ShopReviewBloc(
                repository: context.read<ApplicationRepository>(),
                shopId: args['shopId'] as int),
            child: ShopReviewPage()));

      case '/notifications':
        return _generatePlatformRoute(BlocProvider(
          create: (context) => NotificationBloc(
              repository: context.read<ApplicationRepository>()),
          child: NotificationPage(),
        ));

      case '/orderPreview':
        return _generatePlatformRoute(MultiBlocProvider(providers: [
          BlocProvider(
              create: (context) => OrderPreviewBloc(
                  context: context,
                  repository: context.read<ApplicationRepository>())),
          BlocProvider(
              create: (context) => PlaceOrderButtonBloc(
                  context: context,
                  repository: context.read<ApplicationRepository>()))
        ], child: OrderPreviewPage()));

      case '/orders':
        return _generatePlatformRoute(BlocProvider(
          create: (context) =>
              OrdersBloc(repository: context.read<ApplicationRepository>()),
          child: OrdersPage(),
        ));

      case '/orderCancel':
        final Map<String, dynamic> args =
            settings.arguments as Map<String, dynamic>;
        return _generatePlatformRoute(BlocProvider(
          create: (context) => OrderCancelBloc(
              repository: context.read<ApplicationRepository>(),
              context: context),
          child: OrderCancelPage(orderId: args['orderId']),
        ));

      case '/orderDetails':
        final Map<String, dynamic> args =
            settings.arguments as Map<String, dynamic>;
        return _generatePlatformRoute(BlocProvider(
          create: (context) => OrderDetailsBloc(
              repository: context.read<ApplicationRepository>()),
          child: OrderDetailsPage(
            orderId: args['orderId'],
            tempId: args['tempId'],
          ),
        ));

      // case '/profile':
      //   return _generatePlatformRoute(ProfilePage());

      case '/referral':
        return _generatePlatformRoute(BlocProvider(
          create: (context) =>
              ReferralBloc(repository: context.read<ApplicationRepository>()),
          child: ReferralPage(),
        ));

      case '/requestItems':
        return _generatePlatformRoute(BlocProvider(
          create: (context) => RequestItemBloc(
              context: context,
              repository: context.read<ApplicationRepository>()),
          child: RequestItemPage(),
        ));

      case '/wallet':
        return _generatePlatformRoute(BlocProvider(
          create: (context) =>
              WalletBloc(repository: context.read<ApplicationRepository>()),
          child: WalletPage(),
        ));

      case '/walletRedeem':
        final Map<String, dynamic> args =
            settings.arguments as Map<String, dynamic>;
        return _generatePlatformRoute(BlocProvider(
          create: (context) =>
              WalletBloc(repository: context.read<ApplicationRepository>()),
          child: WalletRedeemPage(orderAmount: args['orderAmount']),
        ));

      case '/webView':
        final Map<String, dynamic> args =
            settings.arguments as Map<String, dynamic>;
        return _generatePlatformRoute(
            WebViewPage(title: args['title'], url: args['url']));

      default:
        return _generatePlatformRoute(Container());
    }
  }

  Route _generatePlatformRoute(Widget page) {
    return Platform.isIOS
        ? CupertinoPageRoute(builder: (_) => page)
        : MaterialPageRoute(builder: (_) => page);
  }
}
