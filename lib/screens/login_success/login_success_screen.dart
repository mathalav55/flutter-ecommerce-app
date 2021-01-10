import 'package:flutter/material.dart';
import 'package:shopping/screens/login_success/components/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = '/login_success';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Login Success'),
      //   centerTitle: true,
      // ),
      body: Body(),
    );
  }
}
