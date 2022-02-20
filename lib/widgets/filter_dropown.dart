import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mayfay_hackaton/style.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<Filter> {
  final List<String> filter = [
    'Gaji',
    'Belanja',
    'Pemasukkan',
  ];

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        dropdownWidth: 150,
        offset: Offset(MediaQuery.of(context).size.width, 0),
        customButton: Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            border: Border.all(
              color: kGrey5Color,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: SvgPicture.asset(
            'assets/icons/icon_filter.svg',
            width: 24,
          ),
        ),
        isExpanded: true,
        buttonWidth: 36,
        buttonHeight: 36,
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        items: filter
            .map((item) => DropdownMenuItem<String>(
                  alignment: Alignment.center,
                  value: item,
                  child: Text(
                    item,
                    style: mediumTextStyle.copyWith(
                      fontSize: 14,
                      color: kGrey3Color,
                    ),
                  ),
                ))
            .toList(),
        onChanged: (value) {
          setState(() {});
        },
      ),
    );
  }
}
