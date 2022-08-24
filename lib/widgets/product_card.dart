import 'package:eshoppy/thema.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class ProductCard extends StatelessWidget {
  final String productName;
  final String imageUrl;
  final String productPrice;
  final String rating;
  final Function() onCart;
  final Function() onTap;
  final double width;
  const ProductCard({
    Key? key,
    required this.productName,
    required this.imageUrl,
    required this.productPrice,
    required this.rating,
    required this.onCart,
    required this.onTap,
    this.width = 200,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 300,
            width: width,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(defaultRadius),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 4),
                  color: kBlackColor.withOpacity(0.1),
                  blurRadius: 20,
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 195,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    image: DecorationImage(
                      image: AssetImage(imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  productName,
                  style: blackTextStyle.copyWith(),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'IDR $productPrice',
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
                Spacer(),
                Container(
                  child: Row(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 14,
                              color: kYellowColor,
                            ),
                            Icon(
                              Icons.star,
                              size: 14,
                              color: kYellowColor,
                            ),
                            Icon(
                              Icons.star,
                              size: 14,
                              color: kYellowColor,
                            ),
                            Icon(
                              Icons.star,
                              size: 14,
                              color: kYellowColor,
                            ),
                            Icon(
                              Icons.star,
                              size: 14,
                              color: kYellowColor,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "($rating)",
                        style: blackTextStyle.copyWith(
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 10,
          bottom: 10,
          child: GestureDetector(
            onTap: onCart,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: kWhiteColor,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: kBlackColor.withOpacity(0.1),
                    offset: Offset(0, 2),
                    blurRadius: 20,
                  ),
                ],
              ),
              child: Icon(
                LineIcons.addToShoppingCart,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
