import 'package:flutter/material.dart';
import 'package:shopping/constants.dart';
import 'package:shopping/size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.image,
    this.text,
  }) : super(key: key);
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          "TOKOTO",
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: getProportionateScreenWidth(36),
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: getProportionateScreenWidth(18)),
        ),
        Spacer(),
        Image(
          image: AssetImage(image),
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        )
      ],
    );
  }
}
