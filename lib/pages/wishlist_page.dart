import 'package:eshoppy/pages/product/product_cart_page.dart';
import 'package:eshoppy/thema.dart';
import 'package:eshoppy/widgets/cart_card.dart';
import 'package:flutter/material.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppBar header() {
      return AppBar(
        title: Text(
          'Your Wishlist',
          style: blackTextStyle,
        ),
        backgroundColor: kWhiteColor,
        elevation: 0,
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: header(),
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          CartCard(),
          CartCard(),
        ],
      ),
    );
  }
}
