import 'package:flutter/material.dart';
import 'package:shopping/constants.dart';
import 'package:shopping/size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onPressed: () {},
        color: kPrimaryColor,
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: getProportionateScreenWidth(18)),
        ),
      ),
    );
  }
}