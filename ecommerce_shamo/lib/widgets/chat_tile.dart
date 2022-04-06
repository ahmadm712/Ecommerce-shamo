import 'package:ecommerce_shamo/models/message_model.dart';
import 'package:ecommerce_shamo/models/products_model.dart';
import 'package:ecommerce_shamo/style/style.dart';
import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  MessageModel message;
  ChatTile(this.message);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          '/detail-chat',
          arguments: UnitializedProductModel(),
        );
        ;
      },
      child: Container(
        margin: EdgeInsets.only(top: 33),
        child: Column(
          children: [
            Row(
              children: [
                Image.network(
                  message.userImg,
                  width: 54,
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        message.userName,
                        style: primaryTextStyle.copyWith(fontSize: 15),
                      ),
                      Text(
                        message.message,
                        style: secondaryTextStyle.copyWith(fontWeight: light),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                Text(
                  message.createdAt.toString(),
                  style: secondaryTextStyle.copyWith(fontSize: 10),
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Divider(
              thickness: 1,
              color: Color(0xff282939),
            )
          ],
        ),
      ),
    );
  }
}
