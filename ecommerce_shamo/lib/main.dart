import 'package:ecommerce_shamo/models/products_model.dart';
import 'package:ecommerce_shamo/pages/cart_pages.dart';
import 'package:ecommerce_shamo/pages/checkout_page.dart';
import 'package:ecommerce_shamo/pages/checkout_success_page.dart';
import 'package:ecommerce_shamo/pages/detail_chat_page.dart';
import 'package:ecommerce_shamo/pages/edit_profile_page.dart';
import 'package:ecommerce_shamo/pages/home/main_page.dart';
import 'package:ecommerce_shamo/pages/product_page.dart';
import 'package:ecommerce_shamo/pages/sign_in_page.dart';
import 'package:ecommerce_shamo/pages/sign_up_page.dart';
import 'package:ecommerce_shamo/pages/splash_page.dart';
import 'package:ecommerce_shamo/provider/auth_provider.dart';
import 'package:ecommerce_shamo/provider/cart_provider.dart';
import 'package:ecommerce_shamo/provider/products_provider.dart';
import 'package:ecommerce_shamo/provider/transactions_provider.dart';
import 'package:ecommerce_shamo/provider/wishlist_provider.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => ProductProvider()),
        ChangeNotifierProvider(create: (_) => WishListProvider()),
        ChangeNotifierProvider(create: (_) => CartProvider()),
        ChangeNotifierProvider(create: (_) => TransactionsProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => MainPage(),
          '/cart': (context) => CartPage(),
          '/checkout': (context) => CheckoutPage(),
          '/checkout-success': (context) => CheckoutPageSuccess(),
          '/detail-chat': (context) => DetailChat(
                product:
                    ModalRoute.of(context).settings.arguments as ProductsModel,
              ),
          '/edit-profile': (context) => EditProfilePage(),
        },
      ),
    );
  }
}
