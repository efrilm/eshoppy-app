import 'package:eshoppy/thema.dart';
import 'package:flutter/material.dart';

class PromoDealWidget extends StatelessWidget {
  final String imageUrl;
  final String discount;
  final String title;
  final Function() onPressed;

  const PromoDealWidget({
    Key? key,
    required this.imageUrl,
    required this.discount,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: 320,
          margin: EdgeInsets.only(
            right: horizontalMargin,
          ),
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(defaultRadius),
            image: DecorationImage(
              image: AssetImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 50,
          left: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: "Up to ",
                  style: greyTextStyle,
                  children: [
                    TextSpan(
                      text: '$discount%',
                      style: primaryTextStyle,
                    ),
                    TextSpan(
                      text: ' off',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                title,
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: TextButton(
                  onPressed: onPressed,
                  style: TextButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Shop Now',
                    style: whiteTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
