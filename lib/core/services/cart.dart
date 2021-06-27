import 'dart:async';
import 'dart:convert';

import 'package:woodle/core/models/item/item_model.dart';
import 'package:woodle/core/services/storage.dart';

class CartService {
  LocalStorage _store = LocalStorage();
  final _controller = StreamController<List<ItemModel>>();

  Stream<List<ItemModel>> get controller => _controller.stream;

  void init() {
    if (_store.get('cart') != null) {
      List cartItems = _store.get('cart') as List;
      List<ItemModel> cartStandardizedItems = [];
      cartItems.forEach((item) =>
          cartStandardizedItems.add(ItemModel.fromJson(json.decode(item))));
      _controller.add(cartStandardizedItems);
    }
  }

  void addItem(ItemModel item) {
    final _storeData = _store.get('cart');
    List<String> cartItems = _storeData != null
        ? List.from(_storeData as Iterable<dynamic>, growable: true)
        : List.empty(growable: true);

    cartItems.add(jsonEncode(item.toJson()));
    _store.set('cart', cartItems);

    List<ItemModel> cartStandardizedItems = [];
    cartItems.forEach((item) =>
        cartStandardizedItems.add(ItemModel.fromJson(json.decode(item))));
    _controller.add(cartStandardizedItems);
  }

  void removeItem(ItemModel item) {
    if (_store.get('cart') != null) {
      List<String> cartItems = _store.get('cart') as List<String>;
      cartItems.remove(jsonEncode(item.toJson()));
      _store.set('cart', cartItems);

      List<ItemModel> cartStandardizedItems = [];
      cartItems.forEach((item) =>
          cartStandardizedItems.add(ItemModel.fromJson(json.decode(item))));
      _controller.add(cartStandardizedItems);
    }
  }

  void dispose() => _controller.close();
}
