import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mayfay_hackaton/style.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class CalenderContainer extends StatefulWidget {
  final String title;
  final String hintText;
  final TextEditingController? controller;
  const CalenderContainer({
    Key? key,
    required this.title,
    required this.hintText,
    this.controller,
  }) : super(key: key);

  @override
  State<CalenderContainer> createState() => _CalenderContainerState();
}

class _CalenderContainerState extends State<CalenderContainer> {
  bool isActive = false;
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
            widget.title,
            style: mediumTextStyle.copyWith(
              fontSize: 16,
              color: kSecondaryColor,
            ),
          ),
          const SizedBox(height: 10),
          InkWell(
            child: Container(
              padding: const EdgeInsets.only(left: 13, right: 13),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: kBoxFieldColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Pilih Tanggal'),
                  isActive
                      ? SvgPicture.asset(
                          'assets/icons/icon_calender.svg',
                          height: 24,
                          width: 24,
                        )
                      : SvgPicture.asset(
                          'assets/icons/icon_calender_blue.svg',
                          height: 24,
                          width: 24,
                        ),
                ],
              ),
            ),
            onTap: () {
              setState(() {
                isActive = !isActive;
              });
              SfDateRangePicker(
                view: DateRangePickerView.month,
              );
            },
          ),
        ],
      ),
    );
  }
}
