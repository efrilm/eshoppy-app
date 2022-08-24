import 'package:eshoppy/thema.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class CardIcon extends StatelessWidget {
  final IconData icon;
  final Function() onTap;
  const CardIcon({Key? key, required this.icon, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
          icon,
        ),
      ),
    );
  }
}
