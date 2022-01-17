import 'package:ecommerce_shamo/style/style.dart';
import 'package:flutter/material.dart';

class CartCard extends StatelessWidget {
  CartCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultMargin),
      decoration: BoxDecoration(
        color: backgroundColor4,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage('assets/image_shoes.png'),
                  ),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Terrex Urban Low',
                      style: primaryTextStyle.copyWith(fontWeight: semibold),
                    ),
                    Text(
                      '\$143,22',
                      style: priceTextStyle,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/button_add.png',
                    height: 16,
                    width: 16,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    '2',
                    style: primaryTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Image.asset(
                    'assets/button_min.png',
                    height: 16,
                    width: 16,
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Image.asset(
                'assets/icon_remove.png',
                width: 12,
                height: 12,
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                'Remove',
                style: alertTextStyle.copyWith(fontSize: 12, fontWeight: light),
              )
            ],
          )
        ],
      ),
    );
  }
}
