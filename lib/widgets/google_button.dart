import 'package:flutter/material.dart';
import 'package:mayfay_hackaton/style.dart';

class GoogleButton extends StatelessWidget {
  final String title;
  final double jarak;
  const GoogleButton({
    Key? key,
    required this.title,
    required this.jarak, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(
          left: 19,
          top: 8,
          bottom: 8,
          right: jarak,
        ),
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: kGrey4Color,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/icons/icon_google.png',
              width: 24,
            ),
            Text(
              title,
              style: mediumTextStyle.copyWith(
                fontSize: 14,
                color: kGrey3Color,
              ),
            )
          ],
        ),
      ),
      onTap: (){},
    );
  }
}
