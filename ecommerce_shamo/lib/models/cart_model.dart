import 'package:ecommerce_shamo/models/products_model.dart';

class CartModel {
  int id;
  ProductsModel product;
  int quantity;
  CartModel({
    this.id,
    this.product,
    this.quantity,
  });

  CartModel.fromjson(Map<String, dynamic> json) {
    id = json['id'];
    product = ProductsModel.fromJson(json['product']);
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'product': product,
      'quantity': quantity,
    };
  }

  double getTotalPrice() {
    return product.price * quantity;
  }
}
