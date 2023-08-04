import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/screens/assignment_screen/assignment_Screen.dart';
import 'package:schoolapp/screens/data_sheet_screen/datasheet_screen.dart';
import 'package:schoolapp/screens/home_screen/home_screen.dart';
import 'package:schoolapp/screens/home_screen/widgets/students_data.dart';
import 'package:schoolapp/screens/my_profile/my_profile.dart';
import 'package:schoolapp/screens/result_screen/result_screen.dart';
import 'package:schoolapp/screens/splash_screen/splash_screen.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kPrimaryColor,
      child: ListView(
        children: [
          DrawerHeader(
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Hi, Aditi'),
                      StudentImage(
                          onPress: () {
                            Navigator.of(context).pop();
                            Navigator.pushNamed(
                                context, MyProfileScreen.routeName);
                            // Navigator.of(context).pop();
                          },
                          studentImage: 'assets/images/aditi.jpeg'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          DrawerHomeCard(
            icon: 'assets/icons/home.svg',
            onPress: () {
              Navigator.of(context).pushNamed(HomeScreen.routeName);
            },
            title: 'Home',
          ),
          DrawerHomeCard(
            icon: 'assets/icons/datesheet.svg',
            onPress: () {
              Navigator.of(context).pushNamed(DataSheetScreen.routeName);
            },
            title: 'Datesheet',
          ),
          DrawerHomeCard(
            icon: 'assets/icons/assignment.svg',
            onPress: () {
              Navigator.of(context).pushNamed(AssignmentScreen.routeName);
            },
            title: 'Assignment',
          ),
          DrawerHomeCard(
            icon: 'assets/icons/result.svg',
            onPress: () {
              Navigator.of(context).pushNamed(ResultScreen.routeName);
            },
            title: 'Result',
          ),
          DrawerHomeCard(
            icon: 'assets/icons/quiz.svg',
            onPress: () {},
            title: 'Take Quiz',
          ),
          DrawerHomeCard(
            icon: 'assets/icons/event.svg',
            onPress: () {},
            title: 'Events',
          ),
          DrawerHomeCard(
            icon: 'assets/icons/gallery.svg',
            onPress: () {},
            title: 'Gallery',
          ),
          DrawerHomeCard(
            icon: 'assets/icons/holiday.svg',
            onPress: () {},
            title: 'Holiday',
          ),
          DrawerHomeCard(
            icon: 'assets/icons/lock.svg',
            onPress: () {},
            title: 'Change Password',
          ),
          DrawerHomeCard(
            icon: 'assets/icons/timetable.svg',
            onPress: () {},
            title: 'Time Table',
          ),
          DrawerHomeCard(
            icon: 'assets/icons/ask.svg',
            onPress: () {},
            title: 'Ask',
          ),
          DrawerHomeCard(
            icon: 'assets/icons/resume.svg',
            onPress: () {},
            title: 'Leave Application',
          ),
          DrawerHomeCard(
            icon: 'assets/icons/logout.svg',
            onPress: () {
              Navigator.of(context).pushNamed(SplashScreen.routeName);
            },
            title: 'Logout',
          ),
        ],
      ),
    );
  }
}
