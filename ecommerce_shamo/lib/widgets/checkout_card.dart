import 'package:ecommerce_shamo/style/style.dart';
import 'package:flutter/material.dart';

class CheckoutCard extends StatelessWidget {
  CheckoutCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: backgroundColor4,
      ),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
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
                  style: primaryTextStyle.copyWith(
                    fontWeight: semibold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  '\$422,22',
                  style: priceTextStyle,
                )
              ],
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Text(
            '2 Items',
            style: secondaryTextStyle.copyWith(fontSize: 12),
          )
        ],
      ),
    );
  }
}
