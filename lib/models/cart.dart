import 'package:flutter_application/models/catalog.dart';

class CartModel {
  CatalogModel _catalog;
  final List<int> _itemIds = [];
  static final cartModel = CartModel._internal();
  CartModel._internal();
  factory CartModel() => cartModel;
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  List<Item> get items =>
      _itemIds.map((id) => _catalog.getItemById(id)).toList();

  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  void add(Item item) {
    _itemIds.add(item.id);
  }

  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
