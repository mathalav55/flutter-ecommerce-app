import 'package:flutter/material.dart';
import 'package:shopping/screens/sign_in/components.dart/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = '/sign_in';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
