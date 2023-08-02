import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';

class AssignmentScreen extends StatelessWidget {
  const AssignmentScreen({Key? key}) : super(key: key);
  static String routeName = 'assignmentScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              //  child: ListView.builder(itemBuilder: itemBuilder),
            ),
          )
        ],
      ),
    );
  }
}
