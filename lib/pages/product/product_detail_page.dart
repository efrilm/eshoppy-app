import 'package:eshoppy/thema.dart';
import 'package:eshoppy/widgets/card_icon.dart';
import 'package:eshoppy/widgets/product_card.dart';
import 'package:eshoppy/widgets/user_review_card.dart';
import 'package:eshoppy/widgets/variant_card.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List images = [
      'assets/product1.jpg',
      'assets/product2.jpeg',
      'assets/product3.jpg',
    ];

    Widget indicator(int index) {
      return Container(
        width: currentIndex == index ? 16 : 4,
        height: 4,
        margin: EdgeInsets.symmetric(
          horizontal: 2,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: currentIndex == index ? kPrimaryColor : kGreyColor,
        ),
      );
    }

    Widget header() {
      int index = -1;
      return Container(
        child: Stack(
          children: [
            Container(
              height: 280,
              child: CarouselSlider(
                items: images
                    .map(
                      (image) => Image.asset(
                        image,
                        fit: BoxFit.cover,
                      ),
                    )
                    .toList(),
                options: CarouselOptions(
                    height: 280,
                    viewportFraction: 1,
                    initialPage: 0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    }),
              ),
            ),
            Positioned(
              top: 20,
              left: horizontalMargin,
              right: horizontalMargin,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardIcon(
                    icon: Icons.chevron_left,
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  CardIcon(
                    icon: LineIcons.shoppingCart,
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 10,
              right: 20,
              child: Row(
                children: images.map((e) {
                  index++;
                  return indicator(index);
                }).toList(),
              ),
            ),
          ],
        ),
      );
    }

    Widget title() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
          left: horizontalMargin,
          right: horizontalMargin,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'H&M Slimfit Guys',
                    style: primaryTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Shirt',
                    style: greyTextStyle.copyWith(),
                  ),
                ],
              ),
            ),
            CardIcon(
              icon: Icons.favorite_border,
              onTap: () {},
            ),
          ],
        ),
      );
    }

    Widget price() {
      return Container(
        margin: EdgeInsets.only(
          left: horizontalMargin,
          right: horizontalMargin,
          top: 20,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 10,
        ),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 2),
              color: kBlackColor.withOpacity(0.1),
              blurRadius: 20,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Price Start Form',
              style: blackTextStyle.copyWith(),
            ),
            Text(
              "IDR 80.000",
              style: primaryTextStyle.copyWith(
                fontSize: 18,
              ),
            ),
          ],
        ),
      );
    }

    Widget color() {
      return Container(
        margin: EdgeInsets.only(
          left: horizontalMargin,
          right: horizontalMargin,
          top: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Color",
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  VariantCard(
                    title: 'White',
                  ),
                  VariantCard(
                    title: 'Black',
                  ),
                  VariantCard(
                    title: 'Yellow',
                  ),
                  VariantCard(
                    title: 'Green',
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget size() {
      return Container(
        margin: EdgeInsets.only(
          left: horizontalMargin,
          right: horizontalMargin,
          top: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Size",
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  VariantCard(
                    title: 'S',
                  ),
                  VariantCard(
                    title: 'M',
                  ),
                  VariantCard(
                    title: 'L',
                  ),
                  VariantCard(
                    title: 'XL',
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget productDetails() {
      return Container(
        margin: EdgeInsets.only(
          left: horizontalMargin,
          right: horizontalMargin,
          top: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Product Details",
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(defaultRadius),
                boxShadow: [
                  BoxShadow(
                    color: kBlackColor.withOpacity(0.1),
                    blurRadius: 20,
                    offset: Offset(0, 1),
                  )
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Stock",
                        style: blackTextStyle,
                      ),
                      Text(
                        '999',
                        style: blackTextStyle,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Brand",
                        style: blackTextStyle,
                      ),
                      Text(
                        'H&M',
                        style: primaryTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(defaultRadius),
                boxShadow: [
                  BoxShadow(
                    color: kBlackColor.withOpacity(0.1),
                    blurRadius: 20,
                    offset: Offset(0, 1),
                  )
                ],
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 12,
                      left: 12,
                      right: 12,
                    ),
                    child: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
                      style: blackTextStyle.copyWith(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: 2,
                    color: kBorderColor,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'See More',
                    style: greyTextStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget shipping() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
          left: horizontalMargin,
          right: horizontalMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Shiping",
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(defaultRadius),
                  boxShadow: [
                    BoxShadow(
                      color: kBlackColor.withOpacity(0.1),
                      offset: Offset(0, 2),
                      blurRadius: 20,
                    )
                  ]),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Shipping Cost : IDR 0 - IDR 18.000",
                      style: blackTextStyle,
                    ),
                  ),
                  Icon(Icons.chevron_right, color: kGreyColor),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget productRatings() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
          left: horizontalMargin,
          right: horizontalMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Product Ratings',
              style: blackTextStyle.copyWith(fontSize: 16),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(defaultRadius),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 2),
                    blurRadius: 20,
                    color: kBlackColor.withOpacity(0.1),
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 20,
                              color: kYellowColor,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Icon(
                              Icons.star,
                              size: 20,
                              color: kYellowColor,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Icon(
                              Icons.star,
                              size: 20,
                              color: kYellowColor,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Icon(
                              Icons.star,
                              size: 20,
                              color: kYellowColor,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              '5/5',
                              style: primaryTextStyle,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              '(40 Review)',
                              style: greyTextStyle,
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: kGreyColor,
                        size: 20,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Container(
                    height: 2,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: kBorderColor,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  UserReviewCard(),
                  UserReviewCard(),
                  UserReviewCard(),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 2,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: kBorderColor,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: double.infinity,
                    child: Text(
                      "View All",
                      style: greyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget youMayLikeAlso() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
          left: horizontalMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'You May Like Also',
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      right: 10,
                    ),
                    child: ProductCard(
                      productName: "H&M Slimfit",
                      imageUrl: "assets/product1.jpg",
                      productPrice: "100000",
                      rating: '5',
                      onCart: () {},
                      onTap: () {},
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      right: 10,
                    ),
                    child: ProductCard(
                      productName: "H&M Slimfit",
                      imageUrl: "assets/product1.jpg",
                      productPrice: "100000",
                      rating: '5',
                      onCart: () {},
                      onTap: () {},
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      right: 10,
                    ),
                    child: ProductCard(
                      productName: "H&M Slimfit",
                      imageUrl: "assets/product1.jpg",
                      productPrice: "100000",
                      rating: '5',
                      onCart: () {},
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget bottomNavBar() {
      return Container(
        height: 60,
        padding: EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Icon(
                LineIcons.sms,
                size: 36,
              ),
            ),
            SizedBox(width: 15),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Add To Cart',
                    style: whiteTextStyle,
                  ),
                ),
              ),
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
          title(),
          price(),
          color(),
          size(),
          shipping(),
          productDetails(),
          productRatings(),
          youMayLikeAlso(),
          SizedBox(
            height: 40,
          ),
        ],
      ),
      bottomNavigationBar: bottomNavBar(),
    );
  }
}
