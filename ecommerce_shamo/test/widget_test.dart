// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:ecommerce_shamo/main.dart';

void main() {
  var coba = "ahmad";

  List<Map<String, dynamic>> data = [
    {"id": 1, "name": "Ahmad Muji", "umur": 20},
    {"id": 2, "name": "Ahmad  Rohiman", "umur": 21},
    {"id": 3, "name": "Ahmad Ahonk", "umur": 22},
  ];

  for (var items in data) {
    if (items['name'] == "Ahmad Muji") {
      print('Ini si Ahmad Muji');
    }
  }

  print('object');
}
