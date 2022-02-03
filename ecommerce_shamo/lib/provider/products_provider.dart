import 'package:ecommerce_shamo/models/products_model.dart';
import 'package:ecommerce_shamo/services/products_services.dart';
import 'package:flutter/cupertino.dart';

class ProductProvider with ChangeNotifier {
  List<ProductsModel> _products = [];
  List<ProductsModel> get products => _products;
  set products(List<ProductsModel> products) {
    _products = products;
    notifyListeners();
  }

  Future<void> getProducts() async {
    try {
      List<ProductsModel> products = await ProductsServices().getProducts();

      _products = products;
    } catch (e) {
      print(e);
    }
  }
}
