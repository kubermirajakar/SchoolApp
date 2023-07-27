import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:schoolapp/constants.dart';

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
                        Row(
                          children: [
                            Text(
                              'Hi ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: kOtherColor.withOpacity(.8),
                                    fontWeight: FontWeight.w300,
                                    fontSize: 20,
                                  ),
                            ),
                            Text(
                              'Ayesha',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: kOtherColor,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Class X-|| A | Roll no : 12',
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: kOtherColor.withOpacity(.8),
                                    fontWeight: FontWeight.w300,
                                    fontSize: 15,
                                  ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 3.2,
                          height: MediaQuery.of(context).size.height / 24,
                          decoration: BoxDecoration(
                            color: kOtherColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                kDefaultPadding,
                              ),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              '2020 - 2021',
                              style: TextStyle(color: kTextBlackColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      maxRadius: 50,
                      minRadius: 50,
                      backgroundImage:
                          AssetImage('assets/images/student_profile.jpeg'),
                    ),
                  ],
                ),
                sizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 9,
                      width: MediaQuery.of(context).size.width / 2.5,
                      decoration: BoxDecoration(
                        color: kOtherColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            kDefaultPadding,
                          ),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Attedance',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: kTextBlackColor,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          Text(
                            '90.02%',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    color: kTextBlackColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: kDefaultPadding),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 9,
                      width: MediaQuery.of(context).size.width / 2.5,
                      decoration: BoxDecoration(
                        color: kOtherColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            kDefaultPadding,
                          ),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Fee Due',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: kTextBlackColor,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          Text(
                            '600\$',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    color: kTextBlackColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: kDefaultPadding),
                          ),
                        ],
                      ),
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
                padding: EdgeInsets.only(top: kDefaultPadding * 2).copyWith(
                    left: kDefaultPadding,
                    bottom: kDefaultPadding,
                    right: kDefaultPadding),
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: kOtherColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(kDefaultPadding * 3),
                    topRight: Radius.circular(kDefaultPadding * 3),
                  ),
                ),
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  children: [
                    HomeCard(
                      icon: 'assets/icons/ask.svg',
                      onPress: () {},
                      title: 'Ask',
                    ),
                    HomeCard(
                      icon: 'assets/icons/ask.svg',
                      onPress: () {},
                      title: 'Ask',
                    ),
                    HomeCard(
                      icon: 'assets/icons/ask.svg',
                      onPress: () {},
                      title: 'Ask',
                    ),
                    HomeCard(
                      icon: 'assets/icons/ask.svg',
                      onPress: () {},
                      title: 'Ask',
                    ),
                    HomeCard(
                      icon: 'assets/icons/ask.svg',
                      onPress: () {},
                      title: 'Ask',
                    ),
                    HomeCard(
                      icon: 'assets/icons/ask.svg',
                      onPress: () {},
                      title: 'Ask',
                    ),
                    HomeCard(
                      icon: 'assets/icons/ask.svg',
                      onPress: () {},
                      title: 'Ask',
                    ),
                    HomeCard(
                      icon: 'assets/icons/ask.svg',
                      onPress: () {},
                      title: 'Ask',
                    ),
                    HomeCard(
                      icon: 'assets/icons/ask.svg',
                      onPress: () {},
                      title: 'Ask',
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
