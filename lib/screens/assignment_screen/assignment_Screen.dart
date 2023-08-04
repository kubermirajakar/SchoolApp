import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/screens/assignment_screen/data/assignment_data.dart';
import 'package:schoolapp/screens/home_screen/widgets/drawer.dart';

class AssignmentScreen extends StatelessWidget {
  static String routeName = 'assignmentScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Assignments'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              // width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(
                    kDefaultPadding,
                  ),
                ),
                color: Colors.white,
              ),
              child: ListView.builder(
                padding: EdgeInsets.all(
                  kDefaultPadding,
                ),
                itemCount: assignment.length,
                itemBuilder: (context, index) => Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          bottom: 20,
                        ),
                        padding: EdgeInsets.all(
                          kDefaultPadding,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            kDefaultPadding,
                          ),
                          color: kOtherColor,
                          boxShadow: [
                            BoxShadow(
                              color: kTextLightColor,
                              blurRadius: 7,
                            ),
                          ],
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              kDefaultPadding,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                height: 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    kDefaultPadding,
                                  ),
                                  color: kSecondaryColor.withOpacity(.4),
                                ),
                                child: Center(
                                  child: Text(
                                    assignment[index].subjectName,
                                    style: TextStyle(
                                      color: kPrimaryColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              kHalfSizedBox,
                              Text(
                                assignment[index].topicName,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              kHalfSizedBox,
                              AssignmentDataRow(
                                title: 'Assign Date',
                                value: assignment[index].assignDate,
                              ),
                              kHalfSizedBox,
                              AssignmentDataRow(
                                title: 'Last date',
                                value: assignment[index].lastDate,
                              ),
                              kHalfSizedBox,
                              AssignmentDataRow(
                                title: 'Status',
                                value: assignment[index].status,
                              ),
                              kHalfSizedBox,
                              if (assignment[index].status == 'Pending')
                                AssignmentStatusBtn(
                                  title: 'To be Submitted',
                                ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class AssignmentStatusBtn extends StatelessWidget {
  final String title;

  const AssignmentStatusBtn({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: kTextWhiteColor,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            kDefaultPadding,
          ),
          gradient: LinearGradient(
            colors: [
              kPrimaryColor,
              kSecondaryColor,
            ],
          ),
        ),
      ),
    );
  }
}

class AssignmentDataRow extends StatelessWidget {
  final String title;
  final String value;
  const AssignmentDataRow({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: kTextLightColor,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            color: kTextBlackColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
