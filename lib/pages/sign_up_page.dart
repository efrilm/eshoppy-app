import 'package:eshoppy/thema.dart';
import 'package:eshoppy/widgets/custom_button.dart';
import 'package:eshoppy/widgets/custom_outline_button.dart';
import 'package:eshoppy/widgets/custom_textformfield.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget back() {
      return GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          margin: EdgeInsets.only(
            top: 20,
            left: horizontalMargin,
            right: horizontalMargin,
          ),
          child: Icon(
            Icons.chevron_left,
            size: 36,
            color: kBlackColor,
          ),
        ),
      );
    }

    Widget imgLogo() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
          left: horizontalMargin,
          right: horizontalMargin,
        ),
        child: Row(
          children: [
            Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/logo.png'),
                ),
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Text(
              'Sign In',
              style: blackTextStyle.copyWith(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
    }

    Widget subtitle() {
      return Container(
        margin: EdgeInsets.only(
          left: horizontalMargin,
          right: horizontalMargin,
          top: 20,
        ),
        child: Text(
          "Let's create account with your identity.",
          style: greyTextStyle,
        ),
      );
    }

    Widget nameTextField() {
      return Container(
        margin: EdgeInsets.only(
          left: horizontalMargin,
          right: horizontalMargin,
          top: 30,
        ),
        child: CustomTextFormField(
          text: 'Full Name',
          hintText: "Alexandra Olivia",
        ),
      );
    }

    Widget emailTextField() {
      return Container(
        margin: EdgeInsets.only(
          left: horizontalMargin,
          right: horizontalMargin,
          top: 15,
        ),
        child: CustomTextFormField(
          text: 'Email',
          hintText: "example@gmail.com",
        ),
      );
    }

    Widget passwordTextField() {
      return Container(
        margin: EdgeInsets.only(
          left: horizontalMargin,
          right: horizontalMargin,
          top: 15,
        ),
        child: CustomTextFormField(
          text: 'Password',
          hintText: "Insert Your Password",
          obscureText: true,
        ),
      );
    }

    Widget confirmPasswordTextField() {
      return Container(
        margin: EdgeInsets.only(
          left: horizontalMargin,
          right: horizontalMargin,
          top: 15,
        ),
        child: CustomTextFormField(
          text: 'Confirm Password',
          hintText: "Insert Your Confirm Password",
          obscureText: true,
        ),
      );
    }

    Widget button() {
      return CustomButton(
        onTap: () {},
        title: "Sign Up",
        color: kPrimaryColor,
        margin: EdgeInsets.only(
          top: 40,
          right: horizontalMargin,
          left: horizontalMargin,
        ),
      );
    }

    Widget or() {
      return Container(
        margin: EdgeInsets.only(
          top: 40,
          left: horizontalMargin,
          right: horizontalMargin,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 120,
              height: 2,
              color: kGreyColor.withOpacity(0.2),
            ),
            Text(
              'Or With',
              style: blackTextStyle.copyWith(
                fontSize: 10,
              ),
            ),
            Container(
              width: 120,
              height: 2,
              color: kGreyColor.withOpacity(0.2),
            ),
          ],
        ),
      );
    }

    Widget googleButton() {
      return CustomOutlineButton(
        title: 'Sign With Google',
        onTap: () {},
        borderColor: kPrimaryColor,
        isImage: true,
        imageUrl: 'assets/icon_google.png',
        margin: EdgeInsets.only(
          top: 30,
          left: horizontalMargin,
          right: horizontalMargin,
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              back(),
              imgLogo(),
              subtitle(),
              nameTextField(),
              emailTextField(),
              passwordTextField(),
              confirmPasswordTextField(),
              button(),
              or(),
              googleButton(),
              SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
