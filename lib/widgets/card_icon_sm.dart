import 'package:eshoppy/thema.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class CardIconSm extends StatelessWidget {
  final Function() onTap;
  final IconData icon;

  const CardIconSm({
    Key? key,
    required this.onTap,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: kBorderColor,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(
          icon,
          color: kBlackColor,
          size: 28,
        ),
      ),
    );
  }
}
