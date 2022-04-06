import 'package:ecommerce_shamo/pages/home/chat_page.dart';
import 'package:ecommerce_shamo/pages/home/home_page.dart';
import 'package:ecommerce_shamo/pages/home/profil_page.dart';
import 'package:ecommerce_shamo/pages/home/wish_list_page.dart';
import 'package:ecommerce_shamo/provider/page_provider.dart';
import 'package:ecommerce_shamo/style/style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    PageProvider pageProvider = Provider.of<PageProvider>(context);
    Widget cartButton() {
      return FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/cart');
        },
        child: Image.asset(
          'assets/icon_cart.png',
          width: 20,
        ),
        backgroundColor: colorSecond,
      );
    }

    Widget customNavBar() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          clipBehavior: Clip.antiAlias,
          notchMargin: 12,
          child: BottomNavigationBar(
            currentIndex: pageProvider.currentIndex,
            onTap: (value) {
              print(value);
              pageProvider.currentIndex = value;
            },
            type: BottomNavigationBarType.fixed,
            backgroundColor: backgroundColor4,
            items: [
              BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 20, bottom: 10),
                    child: Image.asset(
                      'assets/icon_home.png',
                      width: 21,
                      color: pageProvider.currentIndex == 0
                          ? colorPrimary
                          : navbaritemColor,
                    ),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 20, bottom: 10),
                    child: Image.asset('assets/icon_chat.png',
                        width: 20,
                        color: pageProvider.currentIndex == 1
                            ? colorPrimary
                            : navbaritemColor),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 20, bottom: 10),
                    child: Image.asset('assets/icon_wishlist.png',
                        width: 20,
                        color: pageProvider.currentIndex == 2
                            ? colorPrimary
                            : navbaritemColor),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 20, bottom: 10),
                    child: Image.asset('assets/icon_profile.png',
                        width: 20,
                        color: pageProvider.currentIndex == 3
                            ? colorPrimary
                            : navbaritemColor),
                  ),
                  label: ''),
            ],
          ),
        ),
      );
    }

    Widget body() {
      switch (pageProvider.currentIndex) {
        case 0:
          return HomePage();
          break;

        case 1:
          return ChatPage();
          break;

        case 2:
          return WishlistPage();
          break;

        case 3:
          return ProfilPage();
          break;

        default:
      }
    }

    return Scaffold(
        backgroundColor: pageProvider.currentIndex == 0 ? colorBg1 : colorBg3,
        floatingActionButton: cartButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: customNavBar(),
        body: body());
  }
}
