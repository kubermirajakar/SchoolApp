import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/screens/login_screen/login_screen.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = 'SplashScreen';

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(
        seconds: 2,
      ),
      () {
        Navigator.pushNamedAndRemoveUntil(
            context, LoginScreen.routeName, (route) => false);
      },
    );

    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'College',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: kTextWhiteColor,
                      fontSize: 50,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 2),
                ),
                Text(
                  'App',
                  style: GoogleFonts.pattaya(
                    color: kTextWhiteColor,
                    fontSize: 50,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Image.asset('assets/images/splash.png', height: 150, width: 150),
          ],
        ),
      ),
    );
  }
}
