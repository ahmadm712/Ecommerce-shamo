import 'package:ecommerce_shamo/models/products_model.dart';

class MessageModel {
  String message;
  int userId;
  String userImg;
  String userName;
  bool isFromUser;
  ProductsModel product;
  DateTime createdAt;
  DateTime updatedAt;

  MessageModel({
    this.message,
    this.userId,
    this.userImg,
    this.userName,
    this.isFromUser,
    this.product,
    this.createdAt,
    this.updatedAt,
  });

  MessageModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    userId = json['userId'];
    userName = json['userName'];
    userImg = json['userImg'];
    isFromUser = json['isFromUser'];
    product = json['product'].isEmpty
        ? UnitializedProductModel()
        : ProductsModel.fromJson(json['product']);

    createdAt = DateTime.parse(json['createdAt']);
    updatedAt = DateTime.parse(json['updatedAt']);
  }

  Map<String, dynamic> toJson() {
    return {
      "message": message,
      "userId": userId,
      "userName": userName,
      "userImg": userImg,
      "isFromUser": isFromUser,
      "product": product is UnitializedProductModel ? {} : product.toJson(),
      "createdAt": createdAt.toString(),
      "updatedAt": updatedAt.toString()
    };
  }
}
