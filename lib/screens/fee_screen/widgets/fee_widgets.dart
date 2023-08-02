import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';

class ButtonStatus extends StatelessWidget {
  final String title;
  final IconData iconData;
  final VoidCallback onPress;

  const ButtonStatus({
    super.key,
    required this.title,
    required this.iconData,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              kSecondaryColor,
              kPrimaryColor,
            ],
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(
              kDefaultPadding,
            ),
            bottomRight: Radius.circular(
              kDefaultPadding,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: kTextWhiteColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            Icon(
              iconData,
              color: kTextWhiteColor,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}

class FeeDetailRow extends StatelessWidget {
  final String title;
  final String value;

  const FeeDetailRow({
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
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 14,
                color: kTextLightColor,
              ),
        ),
        Text(
          value,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: kTextBlackColor,
              ),
        ),
      ],
    );
  }
}
