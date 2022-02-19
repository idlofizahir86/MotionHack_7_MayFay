import 'package:flutter/material.dart';
import 'package:mayfay_hackaton/style.dart';

class CustomTextNewField extends StatelessWidget {
  final String title;
  final String hintText;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final TextEditingController? controller;
  const CustomTextNewField({
    Key? key,
    required this.title,
    required this.hintText,
    this.textInputAction,
    this.textInputType,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 24,
        right: 24,
        bottom: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: mediumTextStyle.copyWith(
              fontSize: 16,
              color: kSecondaryColor,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.only(left: 12),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: kBoxFieldColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextFormField(
              validator: (title) =>
                  title != null && title.isEmpty ? 'Tidak boleh Kosong' : null,
              controller: controller,
              cursorColor: kBlackColor,
              keyboardType: textInputType,
              textInputAction: textInputAction,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: mediumTextStyle.copyWith(
                  fontSize: 14,
                  color: kGrey3Color,
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
