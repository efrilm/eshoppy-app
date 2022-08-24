import 'package:eshoppy/thema.dart';
import 'package:flutter/material.dart';

class CustomOutlineButton extends StatelessWidget {
  final String title;
  final Function() onTap;
  final Color borderColor;
  final double width;
  final bool isImage;
  final String imageUrl;
  final EdgeInsets margin;

  const CustomOutlineButton({
    Key? key,
    required this.title,
    required this.onTap,
    required this.borderColor,
    this.width = double.infinity,
    this.isImage = false,
    this.imageUrl = '',
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: width,
      margin: margin,
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: borderColor),
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: TextButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isImage
                ? Container(
                    height: 22,
                    width: 22,
                    margin: EdgeInsets.only(
                      right: 8,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imageUrl),
                      ),
                    ),
                  )
                : Container(),
            Text(
              title,
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
          ],
        ),
        onPressed: onTap,
      ),
    );
  }
}
