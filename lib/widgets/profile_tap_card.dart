import 'package:eshoppy/thema.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class ProfileTapCard extends StatelessWidget {
  final Function() onTap;
  final String title;
  final IconData icon;

  const ProfileTapCard({
    Key? key,
    required this.onTap,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Row(
          children: [
            Icon(
              icon,
              color: kPrimaryColor,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              title,
              style: blackTextStyle,
            ),
            Spacer(),
            Icon(
              Icons.chevron_right,
              color: kGreyColor,
              size: 22,
            ),
          ],
        ),
      ),
    );
  }
}
