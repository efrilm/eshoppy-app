import 'package:eshoppy/thema.dart';
import 'package:eshoppy/widgets/custom_button.dart';
import 'package:eshoppy/widgets/custom_outline_button.dart';
import 'package:eshoppy/widgets/custom_textformfield.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget imgLogo() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
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
          "Let's Sign in with your account.",
          style: greyTextStyle,
        ),
      );
    }

    Widget emailTextField() {
      return Container(
        margin: EdgeInsets.only(
          left: horizontalMargin,
          right: horizontalMargin,
          top: 50,
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
          hintText: "Insert your password",
        ),
      );
    }

    Widget forgetPassword() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
          right: horizontalMargin,
        ),
        child: Align(
          alignment: Alignment.bottomRight,
          child: Text(
            'Forget Password?',
            style: greyTextStyle,
          ),
        ),
      );
    }

    Widget button() {
      return CustomButton(
        onTap: () {
          Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
        },
        title: "Sign In",
        color: kPrimaryColor,
        margin: EdgeInsets.only(
          top: 30,
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

    Widget dontHaveAccount() {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/sign-up');
        },
        child: Container(
          margin: EdgeInsets.only(
            bottom: 10,
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text.rich(
              TextSpan(
                text: 'Don\'t have an account? ',
                style: blackTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: medium,
                ),
                children: [
                  TextSpan(
                    text: 'Sign Up',
                    style: blackTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            imgLogo(),
            subtitle(),
            emailTextField(),
            passwordTextField(),
            forgetPassword(),
            button(),
            or(),
            googleButton(),
            Spacer(),
            dontHaveAccount(),
          ],
        ),
      ),
    );
  }
}
