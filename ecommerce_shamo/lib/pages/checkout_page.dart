import 'package:ecommerce_shamo/provider/cart_provider.dart';
import 'package:ecommerce_shamo/style/style.dart';
import 'package:ecommerce_shamo/widgets/checkout_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CheckoutPage extends StatelessWidget {
  CheckoutPage({Key key}) : super(key: key);

  Widget header() {
    return AppBar(
      elevation: 0,
      backgroundColor: colorBg1,
      centerTitle: true,
      title: Text(
        'Checkout Details',
        style: primaryTextStyle,
      ),
    );
  }

  Widget content(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      children: [
        // Todo note List Item

        Container(
          margin: EdgeInsets.only(top: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'List Item',
                style:
                    primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
              ),
              Column(
                children: cartProvider.carts
                    .map(
                      (cart) => CheckoutCard(cart),
                    )
                    .toList(),
              )
            ],
          ),
        ),

        // Todo note Addres Detail
        Container(
          margin: EdgeInsets.only(top: defaultMargin),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: backgroundColor4,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Addres Details',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/icon_store_location.png',
                        height: 40,
                        width: 40,
                      ),
                      Image.asset(
                        'assets/icon_line.png',
                        height: 30,
                        width: 30,
                      ),
                      Image.asset(
                        'assets/icon_your_address.png',
                        height: 40,
                        width: 40,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Store Location',
                        style: secondaryTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: light,
                        ),
                      ),
                      Text(
                        'Adidas Store',
                        style: primaryTextStyle.copyWith(fontWeight: medium),
                      ),
                      SizedBox(
                        height: defaultMargin,
                      ),
                      Text(
                        'Your Address',
                        style: secondaryTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: light,
                        ),
                      ),
                      Text(
                        'Kertajati',
                        style: primaryTextStyle.copyWith(fontWeight: medium),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),

        // Todo Note : Payment Summary
        Container(
          margin: EdgeInsets.only(top: defaultMargin),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: backgroundColor4,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Payment Summary",
                style: primaryTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Product Quantity',
                    style: secondaryTextStyle.copyWith(fontSize: 12),
                  ),
                  Text(
                    '${cartProvider.totalItem()} Items',
                    style: primaryTextStyle.copyWith(fontWeight: medium),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Product Price',
                    style: secondaryTextStyle.copyWith(fontSize: 12),
                  ),
                  Text(
                    '\$${cartProvider.totalPrice()}',
                    style: primaryTextStyle.copyWith(fontWeight: medium),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Shipping',
                    style: secondaryTextStyle.copyWith(fontSize: 12),
                  ),
                  Text(
                    'Free',
                    style: primaryTextStyle.copyWith(fontWeight: medium),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Divider(
                thickness: 1,
                color: Color(0xff2E3141),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: priceTextStyle.copyWith(
                        fontSize: 14, fontWeight: semibold),
                  ),
                  Text(
                    '\$${cartProvider.totalPrice()}',
                    style: priceTextStyle.copyWith(
                        fontSize: 14, fontWeight: semibold),
                  ),
                ],
              ),
            ],
          ),
        ),
        // Todo : Note : Checkout Button
        SizedBox(
          height: defaultMargin,
        ),
        Divider(
          thickness: 1,
          color: Color(0xff2E3141),
        ),
        Container(
          width: double.infinity,
          height: 50,
          margin: EdgeInsets.symmetric(vertical: defaultMargin),
          child: TextButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/checkout-success', (route) => false);
            },
            child: Text(
              'Checkout Now',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: semibold),
            ),
            style: TextButton.styleFrom(
              backgroundColor: colorPrimary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(),
      backgroundColor: colorBg3,
      body: content(context),
    );
  }
}
