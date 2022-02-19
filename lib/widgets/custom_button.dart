import 'package:flutter/material.dart';
import 'package:mayfay_hackaton/style.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
  final Color warnaBackground;
  final Color warnaBorder;
  final Color? warnaText;
  final Function? onPressed;
  const CustomButton({
    Key? key,
    required this.buttonName,
    required this.warnaBackground,
    required this.warnaBorder,
    this.warnaText, this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      width: 121,
      decoration: BoxDecoration(
        color: warnaBackground,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: warnaBorder,
        ),
      ),
      child: Text(
        buttonName,
        style: mediumTextStyle.copyWith(
          fontSize: 12,
          color: warnaText,
        ),
      ),
    );
  }
}
