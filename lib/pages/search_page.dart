import 'package:eshoppy/pages/product/product_detail_page.dart';
import 'package:eshoppy/thema.dart';
import 'package:eshoppy/widgets/card_icon.dart';
import 'package:eshoppy/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        height: 150,
        padding: EdgeInsets.all(horizontalMargin),
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(defaultRadius),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Search",
                  style: whiteTextStyle.copyWith(
                    fontSize: 22,
                    fontWeight: semiBold,
                  ),
                ),
                CardIcon(
                  icon: LineIcons.shoppingCart,
                  onTap: () {},
                ),
              ],
            ),
            Spacer(),
            Container(
              width: double.infinity,
              height: 40,
              padding: EdgeInsets.symmetric(
                horizontal: 12,
              ),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: kGreyColor,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Search',
                    style: greyTextStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget filter() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 20,
          left: horizontalMargin,
          right: horizontalMargin,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
          boxShadow: [
            BoxShadow(
              color: kBlackColor.withOpacity(0.2),
              offset: Offset(0, 2),
              blurRadius: 20,
            ),
          ],
        ),
        child: Row(
          children: [
            Text(
              "Filter",
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            Spacer(),
            Icon(LineIcons.filter),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: 20,
        ),
        child: Wrap(
          runSpacing: 10,
          alignment: WrapAlignment.spaceAround,
          children: [
            ProductCard(
              width: 165,
              productName: "H&M Relaxed Fit Motif",
              imageUrl: "assets/product6.jpg",
              productPrice: "549,900",
              rating: "5",
              onCart: () {},
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProductDetail()));
              },
            ),
            ProductCard(
              width: 165,
              productName: "H&M Relaxed Fit Motif",
              imageUrl: "assets/product6.jpg",
              productPrice: "549,900",
              rating: "5",
              onCart: () {},
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProductDetail()));
              },
            ),
            ProductCard(
              width: 165,
              productName: "H&M Relaxed Fit Motif",
              imageUrl: "assets/product6.jpg",
              productPrice: "549,900",
              rating: "5",
              onCart: () {},
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProductDetail()));
              },
            ),
            ProductCard(
              width: 165,
              productName: "H&M Relaxed Fit Motif",
              imageUrl: "assets/product6.jpg",
              productPrice: "549,900",
              rating: "5",
              onCart: () {},
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProductDetail()));
              },
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: ListView(
        children: [
          header(),
          filter(),
          content(),
        ],
      ),
    );
  }
}
