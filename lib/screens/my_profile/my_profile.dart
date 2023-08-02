import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/screens/home_screen/widgets/students_data.dart';

class MyProfileScreen extends StatelessWidget {
  static String routeName = 'MyProfileScreen';

  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('My Profile'),
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.only(
                right: kDefaultPadding / 2,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.report_gmailerrorred_outlined,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'Report',
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
            ),
          )
        ],
      ),
      body: Container(
        color: kOtherColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 150,
                decoration: const BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(
                      kDefaultPadding * 2,
                    ),
                    bottomRight: Radius.circular(
                      kDefaultPadding * 2,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    StudentImage(
                      // studentImage: 'assets/images/student_profile.jpeg',
                      studentImage: 'assets/images/aditi.jpeg',
                      onPress: () {},
                    ),
                    kWidthSizedBox,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ayesha Mirza',
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontSize: 22,
                                  ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const StudentClass(
                            studentClass: 'Class X-|| A | Roll no : 12'),
                      ],
                    )
                  ],
                ),
              ),
              sizedBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProfileDetailRow(
                    title: 'Registration Number',
                    value: '2020_ASDF-2021',
                  ),
                  ProfileDetailRow(
                    title: 'Academic Year',
                    value: '2021 - 2022',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProfileDetailRow(
                    title: 'Admission Class',
                    value: 'X-II',
                  ),
                  ProfileDetailRow(
                    title: 'Admission Number',
                    value: '000127',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProfileDetailRow(
                    title: 'Date of Admission',
                    value: '1 Aug, 2020',
                  ),
                  ProfileDetailRow(
                    title: 'Date of Birth',
                    value: '21 July 1998',
                  ),
                ],
              ),
              sizedBox,
              ProfileDetailColumn(
                  title: 'Email', value: 'AditiChitragar@gmail.com'),
              ProfileDetailColumn(title: 'Father Name', value: 'Kiran'),
              ProfileDetailColumn(title: 'Mother Name', value: 'Vaishnavi'),
              ProfileDetailColumn(title: 'Phone No', value: '1234567890'),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileDetailColumn extends StatelessWidget {
  final String title;
  final String value;

  const ProfileDetailColumn({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: kTextLightColor,
                      fontSize: 15,
                    ),
              ),
              kHalfSizedBox,
              Text(
                value,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: kTextBlackColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.15,
                child: Divider(
                  thickness: 1.0,
                ),
              ),
            ],
          ),
          Icon(Icons.lock_outline)
        ],
      ),
    );
  }
}

class ProfileDetailRow extends StatelessWidget {
  final String title;
  final String value;

  const ProfileDetailRow({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      padding: EdgeInsets.only(
        left: 6,
        // top: 10,
        right: 6,
      ),
      width: MediaQuery.of(context).size.width / 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: kTextLightColor,
                ),
          ),
          kHalfSizedBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Spacer(),
              Text(
                value,
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: kTextBlackColor,
                    ),
              ),
              Spacer(),
              kHalfWidthSizedBox,
              Icon(Icons.lock_outline),
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.5,
            child: Divider(
              thickness: 1.0,
            ),
          ),
        ],
      ),
    );
  }
}
