import 'package:flutter/material.dart';
class OnBoardingModel extends StatelessWidget {
  final String img;

  const OnBoardingModel({Key key, this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(img), fit: BoxFit.fill),
      ),
    );
  }
}