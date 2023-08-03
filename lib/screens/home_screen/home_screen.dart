import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/screens/assignment_screen/assignment_Screen.dart';
import 'package:schoolapp/screens/data_sheet_screen/datasheet_screen.dart';
import 'package:schoolapp/screens/fee_screen/fee_screen.dart';
import 'package:schoolapp/screens/home_screen/widgets/students_data.dart';
import 'package:schoolapp/screens/my_profile/my_profile.dart';
import 'package:schoolapp/screens/result_screen/result_screen.dart';
import 'package:schoolapp/screens/splash_screen/splash_screen.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = 'homeScreen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
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
              title: 'Change \n Password',
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
              title: 'Leave\nApplication',
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
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(kDefaultPadding),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const StudentName(name: 'Aditi'),
                        const SizedBox(
                          height: 10,
                        ),
                        const StudentClass(
                            studentClass: 'Class X-|| A | Roll no : 12'),
                        const SizedBox(
                          height: 10,
                        ),
                        const StudentYear(studentYear: '2020 - 2021'),
                      ],
                    ),
                    StudentImage(
                      // studentImage: 'assets/images/student_profile.jpeg',
                      studentImage: 'assets/images/aditi.jpeg',
                      onPress: () {
                        Navigator.pushNamed(context, MyProfileScreen.routeName);
                      },
                    ),
                  ],
                ),
                sizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    StudentClassRecord(
                      title: 'Attedance',
                      value: '90%',
                      onPress: () {},
                    ),
                    StudentClassRecord(
                      title: 'Fees Due',
                      value: '600\$',
                      onPress: () {
                        Navigator.of(context).pushNamed(FeeScreen.routeName);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.transparent,
              child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  color: kOtherColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(kDefaultPadding * 3),
                    topRight: Radius.circular(kDefaultPadding * 3),
                  ),
                ),
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  padding: const EdgeInsets.all(kDefaultPadding * 1.2)
                      .copyWith(top: kDefaultPadding * 2),
                  children: [
                    HomeCard(
                      icon: 'assets/icons/datesheet.svg',
                      onPress: () {
                        Navigator.of(context)
                            .pushNamed(DataSheetScreen.routeName);
                      },
                      title: 'Datesheet',
                    ),
                    HomeCard(
                      icon: 'assets/icons/assignment.svg',
                      onPress: () {
                        Navigator.of(context)
                            .pushNamed(AssignmentScreen.routeName);
                      },
                      title: 'Assignment',
                    ),
                    HomeCard(
                      icon: 'assets/icons/result.svg',
                      onPress: () {
                        Navigator.of(context).pushNamed(ResultScreen.routeName);
                      },
                      title: 'Result',
                    ),
                    HomeCard(
                      icon: 'assets/icons/quiz.svg',
                      onPress: () {},
                      title: 'Take Quiz',
                    ),
                    HomeCard(
                      icon: 'assets/icons/event.svg',
                      onPress: () {},
                      title: 'Events',
                    ),
                    HomeCard(
                      icon: 'assets/icons/gallery.svg',
                      onPress: () {},
                      title: 'Gallery',
                    ),
                    HomeCard(
                      icon: 'assets/icons/holiday.svg',
                      onPress: () {},
                      title: 'Holiday',
                    ),
                    HomeCard(
                      icon: 'assets/icons/lock.svg',
                      onPress: () {},
                      title: 'Change \n Password',
                    ),
                    HomeCard(
                      icon: 'assets/icons/timetable.svg',
                      onPress: () {},
                      title: 'Time Table',
                    ),
                    HomeCard(
                      icon: 'assets/icons/ask.svg',
                      onPress: () {},
                      title: 'Ask',
                    ),
                    HomeCard(
                      icon: 'assets/icons/resume.svg',
                      onPress: () {},
                      title: 'Leave\nApplication',
                    ),
                    HomeCard(
                      icon: 'assets/icons/logout.svg',
                      onPress: () {
                        Navigator.of(context).pushNamed(SplashScreen.routeName);
                      },
                      title: 'Logout',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  final String title;
  final String icon;
  final VoidCallback onPress;

  const HomeCard(
      {super.key,
      required this.title,
      required this.icon,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: MediaQuery.of(context).size.width / 3,
        height: MediaQuery.of(context).size.height / 10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(
              kDefaultPadding,
            ),
          ),
          color: kPrimaryColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
              icon,
              width: 50,
              height: 50,
              color: kTextWhiteColor,
            ),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(fontSize: kDefaultPadding),
            )
          ],
        ),
      ),
    );
  }
}

class DrawerHomeCard extends StatelessWidget {
  final String title;
  final String icon;
  final VoidCallback onPress;

  const DrawerHomeCard(
      {super.key,
      required this.title,
      required this.icon,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          bottom: kDefaultPadding,
        ),
        width: MediaQuery.of(context).size.width / 4,
        height: MediaQuery.of(context).size.height / 15,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(
              kDefaultPadding,
            ),
          ),
          color: kPrimaryColor,
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              width: 25,
              height: 25,
              color: kTextWhiteColor,
            ),
            kHalfWidthSizedBox,
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(fontSize: kDefaultPadding),
            )
          ],
        ),
      ),
    );
  }
}
