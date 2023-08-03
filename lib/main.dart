import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/routes.dart';
import 'package:schoolapp/screens/home_screen/home_screen.dart';
import 'package:schoolapp/screens/login_screen/login_screen.dart';
import 'package:schoolapp/screens/splash_screen/splash_screen.dart';
import 'package:sizer/sizer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp(
        debugShowCheckedModeBanner: false,

        // Application name
        title: 'School Brain',
        theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          primaryColor: kPrimaryColor,
          appBarTheme: AppBarTheme(
            color: kPrimaryColor,
            elevation: 0,
          ),
          textTheme:
              GoogleFonts.sourceSansProTextTheme(Theme.of(context).textTheme)
                  .apply()
                  .copyWith(
                    labelMedium: const TextStyle(
                      color: kTextWhiteColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    bodyLarge: const TextStyle(
                      color: kTextWhiteColor,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                    bodySmall: const TextStyle(
                      color: kTextWhiteColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
        ),
        // initialRoute: SplashScreen.routeName,
        initialRoute: SplashScreen.routeName,
        routes: routes,
        home: Scaffold(),
      ),
    );
  }
}
