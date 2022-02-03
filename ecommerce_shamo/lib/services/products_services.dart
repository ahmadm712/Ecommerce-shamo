import 'dart:convert';

import 'package:ecommerce_shamo/models/products_model.dart';
import 'package:http/http.dart' as http;

class ProductsServices {
  String baseUrl = 'https://shamo-backend.buildwithangga.id/api';

  Future<List<ProductsModel>> getProducts() async {
    var url = "${baseUrl}/products";
    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(url, headers: headers);

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<ProductsModel> products = [];
      for (var item in data) {
        products.add(ProductsModel.fromJson(item));
      }
      return products;
    } else {
      throw Exception('Gagal Fecth data');
    }
  }
}
