import 'dart:js';

import 'package:flutter/material.dart';
import 'package:schoolapp/screens/login_screen/login_screen.dart';
import 'package:schoolapp/screens/splash_screen/splash_screen.dart';

Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen()
};
