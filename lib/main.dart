import 'package:eshoppy/pages/home_page.dart';
import 'package:eshoppy/pages/main_page.dart';
import 'package:eshoppy/pages/product/product_cart_page.dart';
import 'package:eshoppy/pages/sign_in_page.dart';
import 'package:eshoppy/pages/sign_up_page.dart';
import 'package:eshoppy/pages/splah_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'eShoppy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => MainPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => HomePage(),
        '/cart': (context) => ProductCart(),
      },
    );
  }
}
