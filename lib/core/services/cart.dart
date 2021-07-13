import 'dart:async';
import 'dart:convert';
import 'package:woodle/core/models/item_varient/item_varient_model.dart';
import 'package:woodle/core/services/storage.dart';
import 'package:woodle/core/settings/config.dart';

class CartService {
  factory CartService() => CartService._internal();
  CartService._internal();

  static late LocalStorage _store;
  static late StreamController<List<ItemVarientModel>> _controller;

  Stream<List<ItemVarientModel>> get controller => _controller.stream;

  void init() {
    _store = LocalStorage();
    _controller = StreamController<List<ItemVarientModel>>.broadcast();
  }

  List<ItemVarientModel> initialValue() {
    List<ItemVarientModel> cartStandardizedItems = [];
    if (_store.get('cart') != null) {
      List cartItems = _store.get('cart') as List;
      cartItems.forEach((item) => cartStandardizedItems
          .add(ItemVarientModel.fromJson(json.decode(item))));
    }
    return cartStandardizedItems;
  }

  void addItem(ItemVarientModel item) {
    final _storeData = _store.get('cart');
    List<String> cartItems = _storeData != null
        ? List.from(_storeData as Iterable<dynamic>, growable: true)
        : List.empty(growable: true);

    if (Config.isPurchasableFromMultiVendor || cartItems.length == 0) {
      cartItems.add(jsonEncode(item.toJson()));
      _store.set('cart', cartItems);

      List<ItemVarientModel> cartStandardizedItems = [];
      cartItems.forEach((item) => cartStandardizedItems
          .add(ItemVarientModel.fromJson(json.decode(item))));
      _controller.add(cartStandardizedItems);
    } else {
      ItemVarientModel _anItemFromCart =
          ItemVarientModel.fromJson(json.decode(cartItems[0]));

      if (_anItemFromCart.shopId == item.shopId) {
        cartItems.add(jsonEncode(item.toJson()));
        _store.set('cart', cartItems);

        List<ItemVarientModel> cartStandardizedItems = [];
        cartItems.forEach((item) => cartStandardizedItems
            .add(ItemVarientModel.fromJson(json.decode(item))));
        _controller.add(cartStandardizedItems);
      } else {
        _store.set('cart', [jsonEncode(item.toJson())]);
        _controller.add([item]);
      }
    }
  }

  void removeItem(ItemVarientModel item) {
    if (_store.get('cart') != null) {
      final _storeData = _store.get('cart');
      List<String> cartItems = _storeData != null
          ? List.from(_storeData as Iterable<dynamic>, growable: true)
          : List.empty(growable: true);
      // List<String> cartItems = _store.get('cart') as List<String>;

      // cartItems.remove(jsonEncode(item.toJson()));

      final matchingItem = cartItems.firstWhere((element) =>
          ItemVarientModel.fromJson(json.decode(element)).itemId ==
          item.itemId);
      cartItems.remove(matchingItem);

      _store.set('cart', cartItems);

      List<ItemVarientModel> cartStandardizedItems = [];
      cartItems.forEach((item) => cartStandardizedItems
          .add(ItemVarientModel.fromJson(json.decode(item))));
      _controller.add(cartStandardizedItems);
    }
  }

  void removeItemsbyId(List ids) {
    if (_store.get('cart') != null) {
      final _storeData = _store.get('cart');
      List<String> cartItems = _storeData != null
          ? List.from(_storeData as Iterable<dynamic>, growable: true)
          : List.empty(growable: true);
      // List<String> cartItems = _store.get('cart') as List<String>;
      List<ItemVarientModel> cartStandardizedItems = [];
      cartItems.forEach((item) {
        ItemVarientModel convertedItem =
            ItemVarientModel.fromJson(json.decode(item));
        if (!ids.contains(convertedItem.varientId))
          cartStandardizedItems.add(convertedItem);
      });
      _controller.add(cartStandardizedItems);
    }
  }

  // void dispose() => _controller.close();
}
