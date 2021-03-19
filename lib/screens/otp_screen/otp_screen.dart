import 'package:flutter/material.dart';
import 'package:shopping/screens/otp_screen/components/body.dart';

class OTPVerificationScreen extends StatelessWidget {
  static String routeName = '/otp';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "OTP verification",
        ),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
