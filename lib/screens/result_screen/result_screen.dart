import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';
import 'package:sizer/sizer.dart';

class ResultScreen extends StatelessWidget {
  static String routeName = 'ResultScreen';
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 20.h,
          ),
          Text(
            'You are excellent',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: kTextWhiteColor,
                  fontWeight: FontWeight.w900,
                ),
          ),
          Text(
            'Aditi!!',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: kTextWhiteColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
          ),
          Container(
            child: Column(
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}
