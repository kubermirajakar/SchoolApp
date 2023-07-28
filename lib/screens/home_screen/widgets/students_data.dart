import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';

class StudentName extends StatelessWidget {
  final String name;

  const StudentName({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Hi ',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: kOtherColor.withOpacity(.8),
                fontWeight: FontWeight.w300,
                fontSize: 20,
              ),
        ),
        Text(
          name,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: kOtherColor,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
        ),
      ],
    );
  }
}

class StudentClass extends StatelessWidget {
  final String studentClass;

  const StudentClass({super.key, required this.studentClass});

  @override
  Widget build(BuildContext context) {
    return Text(
      studentClass,
      style: Theme.of(context).textTheme.bodySmall!.copyWith(
            color: kOtherColor.withOpacity(.8),
            fontWeight: FontWeight.w300,
            fontSize: 15,
          ),
    );
  }
}

class StudentYear extends StatelessWidget {
  final String studentYear;

  const StudentYear({super.key, required this.studentYear});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3.2,
      height: MediaQuery.of(context).size.height / 24,
      decoration: const BoxDecoration(
        color: kOtherColor,
        borderRadius: BorderRadius.all(
          Radius.circular(
            kDefaultPadding,
          ),
        ),
      ),
      child: Center(
        child: Text(
          studentYear,
          style: const TextStyle(color: kTextBlackColor),
        ),
      ),
    );
  }
}

class StudentImage extends StatelessWidget {
  final String studentImage;

  const StudentImage({super.key, required this.studentImage});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: 50,
      minRadius: 50,
      backgroundImage: AssetImage(studentImage),
    );
  }
}

class StudentClassRecord extends StatelessWidget {
  final String title;
  final String value;

  const StudentClassRecord(
      {super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            title,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: kTextBlackColor,
                  fontWeight: FontWeight.bold,
                ),
          ),
          Text(
            value,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: kTextBlackColor,
                fontWeight: FontWeight.w400,
                fontSize: kDefaultPadding),
          ),
        ],
      ),
    );
  }
}
