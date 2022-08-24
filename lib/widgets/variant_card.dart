import 'package:eshoppy/thema.dart';
import 'package:flutter/material.dart';

class VariantCard extends StatelessWidget {
  final String title;
  const VariantCard({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.symmetric(
        vertical: 6,
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: kBlackColor.withOpacity(0.1),
            offset: Offset(0, 2),
            blurRadius: 20,
          ),
        ],
      ),
      child: Text(
        title,
        style: primaryTextStyle,
      ),
    );
  }
}
