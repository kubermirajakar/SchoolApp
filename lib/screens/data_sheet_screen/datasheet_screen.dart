import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/screens/assignment_screen/data/assignment_data.dart';
import 'package:schoolapp/screens/data_sheet_screen/data/datasheet_data.dart';

class DataSheetScreen extends StatelessWidget {
  static String routeName = 'DataSheetScreen';
  const DataSheetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'DataSheet',
        ),
      ),
      body: Column(
        children: [
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
                itemCount: dataSheet.length,
                itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.only(
                    left: kDefaultPadding / 2,
                    right: kDefaultPadding / 2,
                  ),
                  padding: EdgeInsets.all(kDefaultPadding / 2),
                  width: MediaQuery.of(context).size.width,

                  // color: kTextBlackColor,
                  child: Column(
                    children: [
                      SizedBox(
                        height: kDefaultPadding,
                        child: Divider(
                          thickness: 1,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                dataSheet[index].date.toString(),
                                style: TextStyle(
                                  color: kTextBlackColor,
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                dataSheet[index].monthName,
                                style: TextStyle(
                                  color: kTextBlackColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                dataSheet[index].subjectName,
                                style: TextStyle(
                                  color: kTextBlackColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                dataSheet[index].dayName,
                                style: TextStyle(
                                  color: kTextBlackColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                dataSheet[index].time,
                                style: TextStyle(
                                  color: kTextLightColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: kDefaultPadding,
                        child: Divider(
                          thickness: 1,
                        ),
                      ),
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
