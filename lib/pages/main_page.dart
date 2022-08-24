import 'package:eshoppy/pages/home_page.dart';
import 'package:eshoppy/pages/profile_page.dart';
import 'package:eshoppy/pages/search_page.dart';
import 'package:eshoppy/pages/wishlist_page.dart';
import 'package:eshoppy/thema.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;

  List listPage = [
    HomePage(),
    SearchPage(),
    WishlistPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    Widget bottomNavBar() {
      return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              gap: 8,
              activeColor: Colors.white,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: kPrimaryColor.withOpacity(0.8),
              color: Colors.black,
              tabs: [
                GButton(
                  icon: LineIcons.home,
                  text: 'Home',
                  textStyle: whiteTextStyle.copyWith(
                    fontSize: 10,
                  ),
                ),
                GButton(
                  icon: LineIcons.search,
                  text: 'Search',
                  textStyle: whiteTextStyle.copyWith(
                    fontSize: 10,
                  ),
                ),
                GButton(
                  icon: LineIcons.heart,
                  text: 'Favorite',
                  textStyle: whiteTextStyle.copyWith(
                    fontSize: 10,
                  ),
                ),
                GButton(
                  icon: LineIcons.user,
                  text: 'Profile',
                  textStyle: whiteTextStyle.copyWith(
                    fontSize: 10,
                  ),
                ),
              ],
              selectedIndex: selectedIndex,
              onTabChange: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: listPage[selectedIndex],
      bottomNavigationBar: bottomNavBar(),
    );
  }
}
