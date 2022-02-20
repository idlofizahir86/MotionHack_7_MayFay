import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mayfay_hackaton/style.dart';

class DropDown extends StatefulWidget {
  const DropDown({Key? key}) : super(key: key);

  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  final List<String> kategori = [
    'Pemasukkan',
    'Belanja',
    'Sosial',
    'Gaji',
    'Bonus',
  ];

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    bool isSelected = false;
    return InkWell(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(
          left: 24,
          right: 24,
          bottom: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kategori',
              style: mediumTextStyle.copyWith(
                color: kSecondaryColor,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: kBoxFieldColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: DropdownButtonFormField2(
                hint: Text(
                  'Pilih Kategori',
                  style: mediumTextStyle.copyWith(
                    fontSize: 14,
                    color: kGrey3Color,
                  ),
                ),
                offset: Offset(MediaQuery.of(context).size.width, 0),
                dropdownMaxHeight: 90,
                dropdownWidth: 130,
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.zero,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                isExpanded: true,
                icon: isSelected
                    ? SvgPicture.asset(
                        'assets/icons/icon_arrow_up_circle.svg',
                      )
                    : SvgPicture.asset(
                        'assets/icons/icon_arrow_down_circle.svg',
                      ),
                iconSize: 30,
                buttonHeight: 50,
                buttonPadding: const EdgeInsets.only(left: 24, right: 13),
                dropdownDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                items: kategori
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
                    return 'Pilih Kategori';
                  }
                  return null;
                },
                onChanged: (value) {},
                onSaved: (value) {
                  selectedValue = value.toString();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
