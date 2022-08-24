import 'package:eshoppy/thema.dart';
import 'package:flutter/material.dart';

class BrandCard extends StatelessWidget {
  final String imageUrl;
  const BrandCard({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 20,
      ),
      width: 100,
      height: 80,
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(defaultRadius),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0),
            color: kBlackColor.withOpacity(0.1),
            blurRadius: 20,
          ),
        ],
      ),
      child: Image.asset(
        imageUrl,
        fit: BoxFit.contain,
      ),
    );
  }
}
