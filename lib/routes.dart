import "package:flutter/material.dart";
import 'package:shopping/screens/complete_profile/complete_profile_screen.dart';
import 'package:shopping/screens/forgot_password/forgot_password_screen.dart';
import 'package:shopping/screens/login_success/login_success_screen.dart';
import 'package:shopping/screens/sign_in/sign_in_screen.dart';
import 'package:shopping/screens/sign_up/sign_up_screen.dart';
import 'package:shopping/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen()
};
