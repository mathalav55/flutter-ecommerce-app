import 'package:flutter/material.dart';
import 'package:shopping/constants.dart';
import 'package:shopping/screens/sign_up/sign_up_screen.dart';
import 'package:shopping/size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(16),
          ),
        ),
        SizedBox(
          width: getProportionateScreenWidth(15),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, SignUpScreen.routeName);
          },
          child: Text("Sign Up",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                color: kPrimaryColor,
              )),
        )
      ],
    );
  }
}
