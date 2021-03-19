import 'package:flutter/material.dart';
import 'package:shopping/components/default_button.dart';
import 'package:shopping/size_config.dart';
import 'package:shopping/theme.dart';

class OtpForm extends StatefulWidget {
  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode otpField2;
  FocusNode otpField3;
  FocusNode otpField4;
  void init() {
    super.initState();
    otpField2 = FocusNode();
    otpField3 = FocusNode();
    otpField4 = FocusNode();
  }

  void dispose() {
    super.dispose();
    otpField2.dispose();
    otpField3.dispose();
    otpField4.dispose();
  }

  void nextField({String value, FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          SizedBox(
            height: SizeConfig.screenHeight * 0.15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration(),
                  onChanged: (value) {
                    nextField(value: value, focusNode: otpField2);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: otpField2,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration(),
                  onChanged: (value) {
                    nextField(value: value, focusNode: otpField3);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: otpField3,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration(),
                  onChanged: (value) {
                    nextField(value: value, focusNode: otpField4);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: otpField4,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration(),
                  onChanged: (value) {
                    if (value.length == 1) {
                      otpField4.unfocus();
                    }
                  },
                ),
              )
            ],
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.25,
          ),
          DefaultButton(
            text: "Continue",
            press: () {},
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.03,
          ),
          GestureDetector(
            onTap: () {
              print("resend otp");
              //resend otp
            },
            child: Text("Resend Otp",
                style: TextStyle(decoration: TextDecoration.underline)),
          )
        ],
      ),
    );
  }
}
