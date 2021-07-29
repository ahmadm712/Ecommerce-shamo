import 'package:ecommerce_shamo/pages/detail_chat_page.dart';
import 'package:ecommerce_shamo/pages/home/main_page.dart';
import 'package:ecommerce_shamo/pages/sign_in_page.dart';
import 'package:ecommerce_shamo/pages/sign_up_page.dart';
import 'package:ecommerce_shamo/pages/splash_page.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
        '/detail-chat': (context) => DetailChat(),
      },
    );
  }
}
