import 'package:flutter/material.dart';
import 'package:shopping/components/no_account_text.dart';
import 'package:shopping/components/social_card.dart';
import 'package:shopping/screens/sign_in/components/sign_in_form.dart';
import 'package:shopping/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20.0)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(30),
                ),
                Text(
                  'Welcome Back',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Sign in with your e-mail and password \nor continue with social media.',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(80),
                ),
                SignInForm(),
                SizedBox(
                  height: getProportionateScreenHeight(40),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      svgIcon: 'assets/icons/google-icon.svg',
                      press: () {},
                    ),
                    SocialCard(
                      svgIcon: 'assets/icons/facebook-2.svg',
                      press: () {},
                    ),
                    SocialCard(
                      svgIcon: 'assets/icons/twitter.svg',
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(40),
                ),
                NoAccountText(),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
