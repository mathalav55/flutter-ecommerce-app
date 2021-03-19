import 'package:flutter/material.dart';
import 'package:shopping/constants.dart';
import 'package:shopping/screens/otp_screen/components/otp_form.dart';
import 'package:shopping/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.02,
              ),
              Text(
                "OTP Verification",
                style: headingStyle,
              ),
              Text("We sent your code to +91 63096 *****"),
              timerBuilder(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.05,
              ),
              OtpForm(),
            ],
          ),
        ),
      ),
    );
  }

  Row timerBuilder() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This code will expire in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0),
          duration: Duration(seconds: 30),
          builder: (context, value, child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(
              color: kPrimaryColor,
            ),
          ),
          onEnd: () {},
        )
      ],
    );
  }
}
