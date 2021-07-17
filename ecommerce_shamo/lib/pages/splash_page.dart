import 'dart:async';
import 'package:ecommerce_shamo/pages/sign_in_page.dart';
import 'package:ecommerce_shamo/style/style.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return SignInPage();
      }));
    });
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
