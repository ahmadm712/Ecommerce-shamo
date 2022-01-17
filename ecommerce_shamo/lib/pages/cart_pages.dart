import 'package:ecommerce_shamo/style/style.dart';
import 'package:ecommerce_shamo/widgets/cart_card.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  CartPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: colorBg1,
        centerTitle: true,
        title: Text(
          'Your Cart',
          style: primaryTextStyle.copyWith(),
        ),
        elevation: 0,
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          CartCard(),
        ],
      );
    }

    Widget customBottomNav() {
      return Container(
        height: 180,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Subtotal ',
                    style: primaryTextStyle,
                  ),
                  Text(
                    '\$212,55',
                    style: priceTextStyle.copyWith(
                        fontSize: 16, fontWeight: semibold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              thickness: 0.3,
              color: subtitleColor,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/checkout');
                },
                style: TextButton.styleFrom(
                  backgroundColor: colorPrimary,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Continue to checkout',
                      style: primaryTextStyle.copyWith(
                          fontSize: 16, fontWeight: semibold),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: primaryTextColor,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget emptyCart() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icon_empty_cart.png',
              height: 80,
              width: 80,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Oops! Your Cart is Empty',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Let\'s find your favorite shoes",
              style: secondaryTextStyle,
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/home', (route) => false);
                },
                style: TextButton.styleFrom(
                  backgroundColor: colorPrimary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'Explore Shoes',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: colorBg3,
      appBar: header(),
      body: content(),
      bottomNavigationBar: customBottomNav(),
    );
  }
}
