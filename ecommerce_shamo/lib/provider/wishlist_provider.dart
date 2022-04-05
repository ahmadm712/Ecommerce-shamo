import 'package:ecommerce_shamo/models/products_model.dart';
import 'package:flutter/cupertino.dart';

class WishListProvider extends ChangeNotifier {
  List<ProductsModel> _wishlist = [];

  List<ProductsModel> get wishlist => _wishlist;

  set wishlist(List<ProductsModel> wishlist) {
    _wishlist.addAll(wishlist);
    notifyListeners();
  }

  setProduct(ProductsModel product) {
    if (!isWishList(product)) {
      _wishlist.add(product);
    } else {
      _wishlist.removeWhere((element) => element.id == product.id);
    }
    notifyListeners();
  }

  isWishList(ProductsModel product) {
    if (_wishlist.indexWhere((prod) => prod.id == product.id) == -1) {
      return false;
    } else {
      return true;
    }
  }
}
