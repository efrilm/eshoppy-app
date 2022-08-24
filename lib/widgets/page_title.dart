import 'package:eshoppy/thema.dart';
import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  final EdgeInsets margin;
  final String title;
  final Function()? onView;
  final bool isView;
  const PageTitle({
    Key? key,
    this.margin = EdgeInsets.zero,
    required this.title,
    this.onView,
    this.isView = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
          isView
              ? GestureDetector(
                  onTap: onView,
                  child: Row(
                    children: [
                      Text(
                        'View All',
                        style: primaryTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: light,
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                        size: 14,
                        color: kPrimaryColor,
                      ),
                    ],
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
