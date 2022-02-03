import 'dart:async';

import 'package:ecommerce_shamo/provider/products_provider.dart';
import 'package:ecommerce_shamo/style/style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    getInit();
    super.initState();
  }

  getInit() async {
    await Provider.of<ProductProvider>(context, listen: false).getProducts();
    Navigator.pushNamed(context, '/sign-in');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colorBg1,
        body: Center(
          child: Container(
            height: 150,
            width: 130,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/Union.png'))),
          ),
        ));
  }
}
