import 'package:ecommerce_shamo/models/products_model.dart';
import 'package:ecommerce_shamo/provider/wishlist_provider.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_shamo/style/style.dart';
import 'package:provider/provider.dart';

class WishListCard extends StatelessWidget {
  ProductsModel productsModel;
  WishListCard(this.productsModel);
  @override
  Widget build(BuildContext context) {
    WishListProvider wishListProvider = Provider.of<WishListProvider>(context);
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.only(top: 10, left: 12, bottom: 14, right: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: backgroundColor4),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              productsModel.galleries.first.url,
              width: 60,
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
                  productsModel.name,
                  style: primaryTextStyle.copyWith(
                    fontWeight: bold,
                  ),
                ),
                Text(
                  productsModel.price.toString(),
                  style: priceTextStyle,
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              wishListProvider.setProduct(productsModel);

              if (wishListProvider.isWishList(productsModel)) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: colorSecond,
                    content: Text(
                      'Has been added to the Wishlist',
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: colorAlert,
                    content: Text(
                      'Has been removed from the Wishlist',
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              }
            },
            child: Image.asset(
              'assets/button_wishlist_blue.png',
              width: 34,
            ),
          )
        ],
      ),
    );
  }
}
