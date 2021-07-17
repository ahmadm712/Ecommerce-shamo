import 'package:ecommerce_shamo/style/style.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colorBg1,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'data',
              style: secondaryTextStyle.copyWith(fontSize: 22),
            ),
            TextField()
          ],
        ));
  }
}
