import 'package:ecommerce_shamo/style/style.dart';
import 'package:ecommerce_shamo/widgets/chat_tile.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: colorBg1,
        centerTitle: true,
        title: Text(
          'Message Support',
          style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: medium),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget emptychat() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: colorBg3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icon_headset.png',
                width: 80,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Opss no message yet?',
                style:
                    primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'You have never done a transaction',
                style: subtitleTextStyle.copyWith(
                    fontSize: 14, fontWeight: regular),
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
                            EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                        backgroundColor: colorPrimary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                    child: Text(
                      'Explore Stosre',
                      style: primaryTextStyle.copyWith(
                          fontSize: 16, fontWeight: medium),
                    )),
              )
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
            width: double.infinity,
            color: colorBg3,
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              children: [
                ChatTile()
              ],
            )),
      );
    }

    return Column(
      children: [header(), content()],
    );
  }
}
