import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/screens/home_screen/widgets/students_data.dart';
import 'package:schoolapp/screens/my_profile/my_profile.dart';

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
                        const StudentName(name: 'Kuber'),
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
                      onPress: () {},
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
                      icon: 'assets/icons/quiz.svg',
                      onPress: () {},
                      title: 'Take Quiz',
                    ),
                    HomeCard(
                      icon: 'assets/icons/assignment.svg',
                      onPress: () {},
                      title: 'Assignment',
                    ),
                    HomeCard(
                      icon: 'assets/icons/datesheet.svg',
                      onPress: () {},
                      title: 'Datesheet',
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
                      icon: 'assets/icons/result.svg',
                      onPress: () {},
                      title: 'Result',
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
                      onPress: () {},
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
    return Container(
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
    );
  }
}
