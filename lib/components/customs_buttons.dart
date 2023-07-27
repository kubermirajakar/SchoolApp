import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';

class DefaultButton extends StatelessWidget {
  final VoidCallback onPress;
  final String title;
  final IconData icon;

  const DefaultButton(
      {super.key,
      required this.onPress,
      required this.title,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(kDefaultPadding),
        padding: const EdgeInsets.only(right: kDefaultPadding),
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              kSecondaryColor,
              kPrimaryColor,
            ],
          ),
          borderRadius: BorderRadius.circular(kDefaultPadding),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: kOtherColor,
                    fontWeight: FontWeight.w500,
                    fontSize: kDefaultPadding,
                  ),
            ),
            const Spacer(),
            Icon(
              icon,
              size: 30,
              color: kOtherColor,
            ),
          ],
        ),
      ),
    );
  }
}
