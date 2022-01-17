import 'package:ecommerce_shamo/style/style.dart';
import 'package:ecommerce_shamo/widgets/checkout_card.dart';
import 'package:flutter/material.dart';

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

  Widget content() {
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
              CheckoutCard(),
              CheckoutCard(),
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
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(),
      backgroundColor: colorBg3,
      body: content(),
    );
  }
}
