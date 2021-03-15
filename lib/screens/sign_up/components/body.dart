import 'package:flutter/material.dart';
import 'package:shopping/components/social_card.dart';
import 'package:shopping/constants.dart';
import 'package:shopping/screens/sign_up/components/sign_up_form.dart';
import 'package:shopping/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20.0)),
          child: Column(
            children: [
              Text(
                'Register Account',
                style: headingStyle,
              ),
              Text(
                'Complete your details or continue \nwith social media.',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.08,
              ),
              SignUpForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.07,
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
              Text(
                "By continuing you confirm that you agree with our terms and conditions",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
