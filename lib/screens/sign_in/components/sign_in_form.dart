import 'package:flutter/material.dart';
import 'package:shopping/components/custom_suffix_icon.dart';
import 'package:shopping/components/default_button.dart';
import 'package:shopping/components/form_error.dart';
import 'package:shopping/constants.dart';
import 'package:shopping/screens/forgot_password/forgot_password_screen.dart';
import 'package:shopping/screens/login_success/login_success_screen.dart';
import 'package:shopping/size_config.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  bool remember = false;
  final List<String> errors = [];
  void addError({String error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          buildPasswordField(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          FormError(errors: errors),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Row(
            children: [
              Checkbox(
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                },
                value: remember,
                activeColor: kPrimaryColor,
              ),
              Text('Remember me'),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, ForgotPasswordScreen.routeName);
                },
                child: Text(
                  'Forgot Password',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          DefaultButton(
            text: 'Continue',
            press: () {
              if (_formKey.currentState.validate() && errors.length == 0) {
                _formKey.currentState.save();
                //validate mail and push to success screen
                Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              }
            },
          )
        ],
      ),
    );
  }

//Components
  TextFormField buildPasswordField() {
    return TextFormField(
      onSaved: (newValue) => password = newValue,
      obscureText: true,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length > 8) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPassNullError);
        } else if (value.length < 8) {
          addError(error: kShortPassError);
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: "Enter your password",
        labelText: 'Password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/Lock.svg'),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      onSaved: (newValue) => email = newValue,
      keyboardType: TextInputType.emailAddress,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kEmailNullError);
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: "Enter your E-mail",
        labelText: 'E-mail',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/Mail.svg'),
      ),
    );
  }
}
