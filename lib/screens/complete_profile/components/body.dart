import 'package:flutter/material.dart';
import 'package:shopping/constants.dart';
import 'package:shopping/screens/complete_profile/components/complete_profile_form.dart';
import 'package:shopping/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20.0)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.05,
              ),
              Text(
                "Complete Profile",
                style: headingStyle,
              ),
              Text(
                "Complete your details to continue",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.05,
              ),
              CompleteProfileForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.02,
              ),
              Text(
                "By clicking continue you agree with our terms and conditions",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
