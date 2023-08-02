import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/screens/fee_screen/Data/data.dart';
import 'package:schoolapp/screens/fee_screen/widgets/fee_widgets.dart';

class FeeScreen extends StatelessWidget {
  static String routeName = 'FeeScreen';

  const FeeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Fee'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    kDefaultPadding,
                  ),
                  topRight: Radius.circular(
                    kDefaultPadding,
                  ),
                ),
                color: kTextWhiteColor,
              ),
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.all(kDefaultPadding),
                itemCount: data.length,
                itemBuilder: (ctx, index) => Container(
                  margin: EdgeInsets.only(bottom: kDefaultPadding),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(kDefaultPadding),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(
                              kDefaultPadding,
                            ),
                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: kTextLightColor, blurRadius: 2.0)
                          ],
                        ),
                        child: Column(
                          children: [
                            FeeDetailRow(
                              title: 'Receipt No',
                              value: data[index].receiptNo,
                            ),
                            SizedBox(
                              height: kDefaultPadding,
                              child: Divider(
                                thickness: 1.0,
                              ),
                            ),
                            FeeDetailRow(
                              title: 'Month',
                              value: data[index].month,
                            ),
                            sizedBox,
                            FeeDetailRow(
                              title: 'Payment Date',
                              value: data[index].date,
                            ),
                            sizedBox,
                            FeeDetailRow(
                              title: 'Status',
                              value: data[index].paymentStatus,
                            ),
                            sizedBox,
                            SizedBox(
                              height: kDefaultPadding,
                              child: Divider(
                                thickness: 1.0,
                              ),
                            ),
                            FeeDetailRow(
                              title: 'Total Amount',
                              value: data[index].totalAmount,
                            ),
                          ],
                        ),
                      ),
                      ButtonStatus(
                        title: data[index].btnStatus,
                        onPress: () {},
                        iconData: Icons.arrow_right_alt,
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
