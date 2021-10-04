import 'package:ecommerce_shamo/style/style.dart';
import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: colorBg1,
        automaticallyImplyLeading: false,
        elevation: 0,
        flexibleSpace: SafeArea(
            child: Container(
          padding: EdgeInsets.all(defaultMargin),
          child: Row(
            children: [
              ClipOval(
                child: Image.asset(
                  'assets/image_profile.png',
                  width: 64,
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello, Ahmad',
                      style: primaryTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semibold,
                      ),
                    ),
                    Text(
                      '@Ahmxmad',
                      style: subtitleTextStyle.copyWith(fontSize: 16),
                    ),
                  ],
                ),
              ),
              Image.asset(
                'assets/button_exit.png',
                width: 20,
              )
            ],
          ),
        )),
      );
    }

    return Column(
      children: [header()],
    );
  }
}
