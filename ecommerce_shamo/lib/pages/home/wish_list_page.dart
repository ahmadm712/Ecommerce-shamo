import 'package:ecommerce_shamo/style/style.dart';
import 'package:ecommerce_shamo/widgets/wishlist_card.dart';
import 'package:flutter/material.dart';

class WishlistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: colorBg1,
        centerTitle: true,
        title: Text('Favorite Shoes'),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget emptyWishlist() {
      return Expanded(
          child: Container(
        width: double.infinity,
        color: colorBg3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image_wishlist.png',
              width: 74,
            ),
            SizedBox(
              height: 23,
            ),
            Text(
              ' You don\'t have dream shoes?',
              style:
                  primaryTextStyle.copyWith(fontSize: 15, fontWeight: medium),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Let\'s find your favorite shoes',
              style: secondaryTextStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 44,
                child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                        backgroundColor: colorPrimary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                    child: Text('Explore Store',
                        style: priceTextStyle.copyWith(
                            fontWeight: medium, fontSize: 16))))
          ],
        ),
      ));
    }

    Widget content() {
      return Expanded(
          child: Container(
        color: colorBg3,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [WishListCard(), WishListCard(), WishListCard()],
        ),
      ));
    }

    return Column(
      children: [
        header(),
        //  emptyWishlist(),
        content(),
      ],
    );
  }
}
