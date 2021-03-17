import 'package:flutter/material.dart';
import 'package:shopping/components/custom_suffix_icon.dart';
import 'package:shopping/components/default_button.dart';
import 'package:shopping/components/form_error.dart';
import 'package:shopping/constants.dart';
import 'package:shopping/size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  String firstName;
  String lastName;
  String phoneNumber;
  String address;
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
          SizedBox(
            height: getProportionateScreenHeight(30.0),
          ),
          buildFirstNameFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30.0),
          ),
          buildLastNameFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30.0),
          ),
          buildPhoneFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30.0),
          ),
          buildAddressFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30.0),
          ),
          FormError(
            errors: errors,
          ),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState.validate()) {
                //go to OTP screen
              }
            },
          )
        ],
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      onSaved: (newValue) => address = newValue,
      keyboardType: TextInputType.emailAddress,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kAddressNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kAddressNullError);
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: "Enter your Address",
        labelText: 'Address',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:
            CustomSuffixIcon(svgIcon: 'assets/icons/Location point.svg'),
      ),
    );
  }

  TextFormField buildPhoneFormField() {
    return TextFormField(
      onSaved: (newValue) => phoneNumber = newValue,
      keyboardType: TextInputType.phone,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPhoneNumberNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPhoneNumberNullError);
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: "Enter your Phone Number",
        labelText: 'Phone Number',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/Phone.svg'),
      ),
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      onSaved: (newValue) => lastName = newValue,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        hintText: "Enter your Last name",
        labelText: 'Last Name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/User.svg'),
      ),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      onSaved: (newValue) => firstName = newValue,
      keyboardType: TextInputType.name,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNamelNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kNamelNullError);
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: "Enter First Name",
        labelText: 'First Name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/User.svg'),
      ),
    );
  }
}
