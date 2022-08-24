import 'package:eshoppy/pages/product/product_detail_page.dart';
import 'package:eshoppy/thema.dart';
import 'package:eshoppy/widgets/brand_card.dart';
import 'package:eshoppy/widgets/category_widget.dart';
import 'package:eshoppy/widgets/page_title.dart';
import 'package:eshoppy/widgets/product_card.dart';
import 'package:eshoppy/widgets/promo_deal_widget.dart';
import 'package:eshoppy/widgets/slider_widget.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    AppBar appBar() {
      return AppBar(
        backgroundColor: kWhiteColor,
        elevation: 0,
        title: Row(
          children: [
            Image.asset(
              'assets/logo.png',
              width: 40,
            ),
            SizedBox(
              width: 8,
            ),
            Text.rich(
              TextSpan(
                text: 'e',
                style: primaryTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: bold,
                ),
                children: [
                  TextSpan(
                    text: 'Shoppy',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/cart');
            },
            icon: Icon(
              LineIcons.shoppingCart,
              color: kBlackColor,
              size: 26,
            ),
          ),
        ],
      );
    }

    Widget banner() {
      return SizedBox(
        height: 200.0,
        width: double.infinity,
        child: Stack(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                  height: 240,
                  viewportFraction: 1,
                  autoPlay: true,
                  reverse: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
              items: slider,
            ),
            Positioned(
              bottom: 10,
              right: 4,
              child: Row(
                children: slider.asMap().entries.map((e) {
                  return Container(
                    margin: EdgeInsets.only(right: 5),
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: e.key == _current ? kPrimaryColor : kWhiteColor,
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      );
    }

    Widget categories() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: horizontalMargin,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CategoryWidget(
                title: "Shirt",
                onTap: () {},
                imageUrl: 'assets/product3.jpg',
              ),
              CategoryWidget(
                title: "Shoe",
                onTap: () {},
                imageUrl: 'assets/product10.jpg',
              ),
              CategoryWidget(
                title: "Jeans",
                imageUrl: 'assets/product6.jpg',
                onTap: () {},
              ),
              CategoryWidget(
                title: "Hoodie",
                imageUrl: 'assets/product5.jpg',
                onTap: () {},
              ),
              CategoryWidget(
                title: "Jacket",
                imageUrl: 'assets/product8.jpg',
                onTap: () {},
              ),
            ],
          ),
        ),
      );
    }

    Widget promoDeals() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: horizontalMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                PromoDealWidget(
                  imageUrl: "assets/banner1.png",
                  discount: "50",
                  title: "Office T-Shirt",
                  onPressed: () {},
                ),
                PromoDealWidget(
                  imageUrl: "assets/banner2.png",
                  discount: "70",
                  title: "Shoes",
                  onPressed: () {},
                ),
              ]),
            ),
          ],
        ),
      );
    }

    Widget newArrivals() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          children: [
            PageTitle(
              margin: EdgeInsets.symmetric(
                horizontal: horizontalMargin,
              ),
              title: "New Arrivals",
              isView: true,
              onView: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProductDetail()));
              },
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 320,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                      ),
                      child: ProductCard(
                        productName: "H&M Relaxed Fit Motif",
                        imageUrl: "assets/product1.jpg",
                        productPrice: "549,900",
                        rating: "5",
                        onCart: () {},
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductDetail()));
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                      ),
                      child: ProductCard(
                        productName: "H&M Long Sleeved Hoodie",
                        imageUrl: "assets/product5.jpg",
                        productPrice: "479,900",
                        rating: "5",
                        onCart: () {},
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductDetail()));
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                      ),
                      child: ProductCard(
                        productName: "H&M Relaxed Fit Motif",
                        imageUrl: "assets/product6.jpg",
                        productPrice: "549,900",
                        rating: "5",
                        onCart: () {},
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductDetail()));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget bestSeller() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          children: [
            PageTitle(
              title: "Best Seller",
              isView: true,
              onView: () {},
              margin: EdgeInsets.symmetric(
                horizontal: horizontalMargin,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 320,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                      ),
                      child: ProductCard(
                        productName: "H&M Relaxed Fit Motif",
                        imageUrl: "assets/product1.jpg",
                        productPrice: "549,900",
                        rating: "5",
                        onCart: () {},
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductDetail()));
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                      ),
                      child: ProductCard(
                        productName: "H&M Long Sleeved Hoodie",
                        imageUrl: "assets/product5.jpg",
                        productPrice: "479,900",
                        rating: "5",
                        onCart: () {},
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductDetail()));
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                      ),
                      child: ProductCard(
                        productName: "H&M Relaxed Fit Motif",
                        imageUrl: "assets/product6.jpg",
                        productPrice: "549,900",
                        rating: "5",
                        onCart: () {},
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductDetail()));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget brands() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
          left: horizontalMargin,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              BrandCard(imageUrl: "assets/zara1.png"),
              BrandCard(imageUrl: "assets/uniqlo1.png"),
              BrandCard(imageUrl: "assets/hm1.png"),
              BrandCard(imageUrl: "assets/adidas1.png"),
              BrandCard(imageUrl: "assets/dickies1.png"),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: appBar(),
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            banner(),
            categories(),
            promoDeals(),
            newArrivals(),
            bestSeller(),
            brands(),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
