import 'dart:js';

import 'package:flutter/material.dart';
import 'package:schoolapp/screens/assignment_screen/assignment_Screen.dart';
import 'package:schoolapp/screens/fee_screen/fee_screen.dart';
import 'package:schoolapp/screens/home_screen/home_screen.dart';
import 'package:schoolapp/screens/login_screen/login_screen.dart';
import 'package:schoolapp/screens/my_profile/my_profile.dart';
import 'package:schoolapp/screens/splash_screen/splash_screen.dart';

Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  MyProfileScreen.routeName: (context) => MyProfileScreen(),
  FeeScreen.routeName: (context) => FeeScreen(),
  AssignmentScreen.routeName: (context) => AssignmentScreen(),
};
