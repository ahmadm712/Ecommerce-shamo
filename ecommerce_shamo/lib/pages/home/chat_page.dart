import 'package:ecommerce_shamo/models/message_model.dart';
import 'package:ecommerce_shamo/provider/auth_provider.dart';
import 'package:ecommerce_shamo/services/message_services.dart';
import 'package:ecommerce_shamo/style/style.dart';
import 'package:ecommerce_shamo/widgets/chat_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
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
      return StreamBuilder<List<MessageModel>>(
        stream: MessagesServices()
            .getMessagesByUserId(userId: authProvider.user.id),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data.length == 0) {
              return emptychat();
            }
            return Expanded(
              child: Container(
                  width: double.infinity,
                  color: colorBg3,
                  child: ListView(
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    children: [
                      ChatTile(snapshot.data[snapshot.data.length - 1]),
                    ],
                  )),
            );
          } else {
            return emptychat();
          }
        },
      );
    }

    return Column(
      children: [header(), content()],
    );
  }
}
