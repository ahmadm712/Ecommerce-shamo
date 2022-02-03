import 'package:ecommerce_shamo/models/category_model.dart';
import 'package:ecommerce_shamo/models/galleries_model.dart';

class ProductsModel {
  int id;
  String name;
  double price;
  String description;
  String tags;

  CategoryModel category;
  DateTime createdAt;
  DateTime updateAt;
  List<GalleryModel> galleries;

  ProductsModel(
      {this.id,
      this.name,
      this.price,
      this.description,
      this.tags,
      this.category,
      this.createdAt,
      this.updateAt,
      this.galleries});

  ProductsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = double.parse(json['price'].toString());
    description = json['description'];
    tags = json['tags'];
    category = CategoryModel.fromJson(json['category']);
    galleries = json['galleries']
        .map<GalleryModel>((galery) => GalleryModel.fromJson(galery))
        .toList();

    createdAt = DateTime.parse(json['created_at']);
    updateAt = DateTime.parse(json['updated_at']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'description': description,
      'tags': tags,
      'category': category.toJson(),
      'galleries': galleries.map((e) => e.toJson()).toList(),
      'created_at': createdAt.toString(),
      'updated_at': updateAt.toString()
    };
  }
}
