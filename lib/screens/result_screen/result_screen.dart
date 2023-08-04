import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/screens/result_screen/component/result_component.dart';
import 'package:schoolapp/screens/result_screen/data/result_data.dart';
import 'package:sizer/sizer.dart';
import 'package:collection/collection.dart';

class ResultScreen extends StatelessWidget {
  static String routeName = 'ResultScreen';
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int oMarks = result.map((e) => e.obtainedMarks).sum.toInt();
    int tMarks = result.map((e) => e.totalMarks).sum.toInt();

    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(3.h),
            height: 20.h,
            child: CustomPaint(
              foregroundPainter: CircularPainter(
                backgroundColor: kPrimaryColor,
                lineCOlor: kOtherColor,
                width: 5.w,
              ),
              child: Center(
                child: Text(
                  oMarks.toString() + '\n / \n' + tMarks.toString(),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 20,
                      ),
                ),
              ),
            ),
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
          sizedBox,
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: kOtherColor,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(
                    kDefaultPadding,
                  ),
                ),
              ),
              child: ListView.builder(
                padding: EdgeInsets.all(
                  kDefaultPadding,
                ),
                itemCount: result.length,
                itemBuilder: (context, index) => Container(
                  padding: EdgeInsets.all(
                    kDefaultPadding / 2,
                  ),
                  margin: EdgeInsets.only(
                    bottom: kDefaultPadding,
                  ),
                  decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(
                        kDefaultPadding,
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 2.0,
                          color: kTextLightColor,
                        )
                      ]),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            result[index].subjectName,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: kTextWhiteColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w100,
                                ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${result[index].obtainedMarks.toString()} / ${result[index].totalMarks.toString()}',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: kTextWhiteColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w100,
                                    ),
                              ),
                              Stack(
                                children: [
                                  Container(
                                    width: result[index].totalMarks.toDouble(),
                                    height: 2.h,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(
                                          kDefaultPadding,
                                        ),
                                        bottomRight: Radius.circular(
                                          kDefaultPadding,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        result[index].obtainedMarks.toDouble(),
                                    height: 2.h,
                                    decoration: BoxDecoration(
                                      color: result[index].grade == 'D'
                                          ? kErrorBorderColor
                                          : kTextWhiteColor,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(
                                          kDefaultPadding,
                                        ),
                                        bottomRight: Radius.circular(
                                          kDefaultPadding,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                textAlign: TextAlign.end,
                                result[index].grade,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: kTextWhiteColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w100,
                                    ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
