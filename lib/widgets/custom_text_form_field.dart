import 'package:flutter/material.dart';
import 'package:mayfay_hackaton/style.dart';

class CustomTextFromField extends StatelessWidget {
  final String title;
  final String hintText;
  final bool obscureText;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  const CustomTextFromField({
    Key? key,
    required this.title,
    required this.hintText,
    this.obscureText = false,
    this.textInputAction,
    this.textInputType,
  }) : super(key: key);

  get kBlackColor => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 11),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: mediumTextStyle.copyWith(
              color: kGrey2Color,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Container(
            padding: const EdgeInsets.only(left: 12),
            width: double.infinity,
            height: 56,
            decoration: BoxDecoration(
              color: kBoxFieldColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextFormField(
              cursorColor: kBlackColor,
              obscureText: obscureText,
              keyboardType: textInputType,
              textInputAction: textInputAction,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: mediumTextStyle.copyWith(
                  fontSize: 18,
                  color: kGrey4Color,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
