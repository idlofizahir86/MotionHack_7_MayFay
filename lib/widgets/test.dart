import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mayfay_hackaton/style.dart';

class TestDeh extends StatefulWidget {
  const TestDeh({Key? key}) : super(key: key);

  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<TestDeh> {
  final List<String> filter = [
    'Gaji'
        'Belanja'
        'Pemasukkan'
  ];

  String? selectedValue;
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
          Column(
            children: [
              DropdownButtonFormField2(
                offset: Offset(MediaQuery.of(context).size.width, 0),
                decoration: InputDecoration(
                  isDense: false,
                  contentPadding: EdgeInsets.zero,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                isExpanded: true,
                icon: SvgPicture.asset(
                  'assets/icons/icon_filter.svg',
                ),
                iconSize: 24,
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
                validator: (value) {
                  if (value == null) {
                    return '';
                  }
                  return null;
                },
                onChanged: (value) {},
                onSaved: (value) {
                  selectedValue = value.toString();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
