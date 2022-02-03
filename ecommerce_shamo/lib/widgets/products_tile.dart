import 'package:ecommerce_shamo/models/products_model.dart';
import 'package:ecommerce_shamo/style/style.dart';
import 'package:flutter/material.dart';

class ProductsTile extends StatelessWidget {
  final ProductsModel product;
  ProductsTile(this.product);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/product");
      },
      child: Container(
        margin: EdgeInsets.only(
            left: defaultMargin, right: defaultMargin, bottom: defaultMargin),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                product.galleries.first.url,
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
                  product.category.name,
                  style: secondaryTextStyle.copyWith(fontSize: 12),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  product.name,
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semibold,
                  ),
                  maxLines: 1,
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  '\$${product.price.toString()}',
                  style: priceTextStyle.copyWith(fontWeight: medium),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
