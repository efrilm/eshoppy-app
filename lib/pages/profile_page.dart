import 'package:eshoppy/thema.dart';
import 'package:eshoppy/widgets/buy_again_card.dart';
import 'package:eshoppy/widgets/card_icon.dart';
import 'package:eshoppy/widgets/profile_tap_card.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        width: double.infinity,
        height: 150,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              kPrimaryColor.withOpacity(0.8),
              kPrimaryColor,
            ],
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Profile",
                  style: whiteTextStyle.copyWith(
                    fontSize: 20,
                  ),
                ),
                CardIcon(
                  icon: LineIcons.shoppingCart,
                  onTap: () {},
                ),
              ],
            ),
            SizedBox(
              height: 4,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/avatar1.png'),
                ),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Jason ALexandre',
                      style: whiteTextStyle.copyWith(
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'jasonalexandre@gmail.com',
                      style: greyTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget yourOrder() {
      return Container(
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.only(
          top: 20,
          left: horizontalMargin,
          right: horizontalMargin,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
          boxShadow: [
            BoxShadow(
              color: kBlackColor.withOpacity(0.1),
              offset: Offset(0, 2),
              blurRadius: 20,
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  LineIcons.list,
                  color: kPrimaryColor,
                  size: 22,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Your Order',
                  style: blackTextStyle,
                ),
              ],
            ),
            Divider(),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(LineIcons.creditCard),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Not Yet Paid',
                      style: greyTextStyle.copyWith(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(LineIcons.gift),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Packed',
                      style: greyTextStyle.copyWith(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(LineIcons.truck),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Shipping',
                      style: greyTextStyle.copyWith(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(LineIcons.firstOrder),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Finished',
                      style: greyTextStyle.copyWith(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'View Order History',
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                Icon(
                  Icons.chevron_right,
                  color: kGreyColor,
                  size: 16,
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget buyAgain() {
      return Container(
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.only(
          top: 20,
          left: horizontalMargin,
          right: horizontalMargin,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 2),
              color: kBlackColor.withOpacity(0.1),
              blurRadius: 20,
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  LineIcons.shoppingBag,
                  color: kPrimaryColor,
                ),
                SizedBox(width: 15),
                Text(
                  'Buy Again',
                  style: blackTextStyle,
                ),
              ],
            ),
            Divider(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  BuyAgainCard(),
                  BuyAgainCard(),
                  BuyAgainCard(),
                ],
              ),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'View All',
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                Icon(
                  Icons.chevron_right,
                  size: 16,
                  color: kGreyColor,
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget general() {
      return Container(
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.only(
          top: 20,
          left: horizontalMargin,
          right: horizontalMargin,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
          boxShadow: [
            BoxShadow(
              color: kBlackColor.withOpacity(0.1),
              blurRadius: 20,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            ProfileTapCard(
              onTap: () {},
              title: 'My Ratings',
              icon: LineIcons.star,
            ),
            Divider(),
            ProfileTapCard(
              onTap: () {},
              title: 'Setting Account',
              icon: LineIcons.user,
            ),
            Divider(),
            ProfileTapCard(
              onTap: () {},
              title: 'Help Center',
              icon: Icons.help_center_outlined,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            header(),
            yourOrder(),
            buyAgain(),
            general(),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
