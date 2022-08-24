import 'package:eshoppy/thema.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  final String imageUrl;
  final String title;

  const SliderWidget({
    Key? key,
    required this.imageUrl,
    this.title = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          imageUrl,
          fit: BoxFit.cover,
          width: double.infinity,
          height: 240,
        ),
        Column(
          children: [
            Text(
              title,
              style: blackTextStyle,
            ),
          ],
        ),
      ],
    );
  }
}

List<Widget> slider = [
  SliderWidget(
    imageUrl: "assets/slide1.png",
  ),
  SliderWidget(
    imageUrl: "assets/slide2.png",
  ),
  SliderWidget(
    imageUrl: "assets/slide3.png",
  ),
];
