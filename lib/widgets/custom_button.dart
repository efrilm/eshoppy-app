import 'package:eshoppy/thema.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final String title;
  final EdgeInsets margin;
  final Function() onTap;
  final Color color;

  const CustomButton({
    Key? key,
    this.width = double.infinity,
    required this.title,
    this.margin = EdgeInsets.zero,
    required this.onTap,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: double.infinity,
      margin: margin,
      child: TextButton(
        child: Text(
          title,
          style: whiteTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
        ),
        onPressed: onTap,
      ),
    );
  }
}
