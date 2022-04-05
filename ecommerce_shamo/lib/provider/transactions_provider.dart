import 'package:ecommerce_shamo/models/cart_model.dart';
import 'package:ecommerce_shamo/services/transactions_service.dart';
import 'package:flutter/widgets.dart';

class TransactionsProvider extends ChangeNotifier {
  Future<bool> checkout(
      {String token, List<CartModel> carts, double totalPrice}) async {
    try {
      if (await TransactionsServices()
          .checkout(carts: carts, token: token, totalPrice: totalPrice)) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e);
      return false;
    }
  }
}
