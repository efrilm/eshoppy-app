import 'package:eshoppy/thema.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;
  final String hintText;
  final bool obscureText;

  const CustomTextFormField({
    Key? key,
    required this.text,
    required this.hintText,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: medium,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          height: 50,
          padding: EdgeInsets.symmetric(
            horizontal: 12,
          ),
          decoration: BoxDecoration(
            color: kBgFormColor,
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
          child: TextFormField(
            style: blackTextStyle,
            obscureText: obscureText,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintStyle: greyTextStyle,
              hintText: hintText,
              focusColor: kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
