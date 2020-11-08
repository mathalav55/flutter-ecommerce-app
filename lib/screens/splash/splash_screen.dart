import 'package:flutter/material.dart';
import 'package:shopping/screens/splash/components/body.dart';
import 'package:shopping/size_config.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
