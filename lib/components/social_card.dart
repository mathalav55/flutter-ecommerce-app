import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping/size_config.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    Key key,
    this.svgIcon,
    this.press,
  }) : super(key: key);
  final String svgIcon;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        padding: EdgeInsets.all(getProportionateScreenWidth(12)),
        height: getProportionateScreenHeight(45),
        width: getProportionateScreenWidth(45),
        decoration: BoxDecoration(
          color: Color(0xFFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(svgIcon),
      ),
    );
  }
}
