import 'package:eshoppy/thema.dart';
import 'package:eshoppy/widgets/cart_card.dart';
import 'package:flutter/material.dart';

class ProductCart extends StatelessWidget {
  const ProductCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppBar appBar() {
      return AppBar(
        title: Text(
          "Your Cart",
          style: primaryTextStyle,
        ),
        centerTitle: true,
        backgroundColor: kWhiteColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            color: kBlackColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      );
    }

    Widget bottomNavBar() {
      return Container(
        height: 120,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: kWhiteColor,
          boxShadow: [
            BoxShadow(
              color: kBlackColor.withOpacity(0.1),
              offset: Offset(0, -15),
              blurRadius: 20,
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.view_list,
                  color: kPrimaryColor,
                ),
                SizedBox(width: 10),
                Text(
                  'Voucher eShoppy',
                  style: blackTextStyle.copyWith(
                    fontWeight: light,
                    fontSize: 12,
                  ),
                ),
                Spacer(),
                Text(
                  "Use / Enter Code",
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                Icon(
                  Icons.chevron_right,
                  color: kGreyColor,
                  size: 18,
                ),
              ],
            ),
            Spacer(),
            Container(
              height: 2,
              width: double.infinity,
              color: kBorderColor.withOpacity(0.5),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'IDR 1.698.000',
                  style: primaryTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
                Container(
                  height: 45,
                  width: 200,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Checkouts',
                      style: whiteTextStyle,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: appBar(),
      body: ListView(
        children: [
          CartCard(),
          CartCard(),
          CartCard(),
        ],
      ),
      bottomNavigationBar: bottomNavBar(),
    );
  }
}
