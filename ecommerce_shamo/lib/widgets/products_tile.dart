import 'package:ecommerce_shamo/style/style.dart';
import 'package:flutter/material.dart';

class ProductsTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: defaultMargin, right: defaultMargin, bottom: defaultMargin),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/image_shoes.png',
              height: 120,
              width: 120,
              fit: BoxFit.cover,
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
                'Footbal',
                style: secondaryTextStyle.copyWith(fontSize: 12),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'Predator 20.3 FirmGround',
                style: primaryTextStyle.copyWith(
                    fontSize: 16, fontWeight: semibold),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                '\$41,42',
                style: priceTextStyle.copyWith(fontWeight: medium),
              )
            ],
          ))
        ],
      ),
    );
  }
}