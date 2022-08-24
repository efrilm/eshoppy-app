import 'package:eshoppy/thema.dart';
import 'package:flutter/material.dart';

class BuyAgainCard extends StatelessWidget {
  const BuyAgainCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 12,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: kBorderColor,
        ),
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(defaultRadius),
              ),
              color: kGreyColor,
              image: DecorationImage(
                image: AssetImage('assets/product1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
            ),
            child: Text(
              'Buy 1',
              style: greyTextStyle.copyWith(
                fontSize: 10,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
            ),
            child: Text(
              "IDR 100.000",
              style: primaryTextStyle,
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
