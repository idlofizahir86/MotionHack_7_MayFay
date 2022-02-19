import 'package:flutter/material.dart';
import 'package:mayfay_hackaton/style.dart';
import 'package:mayfay_hackaton/widgets/calender_container.dart';
import 'package:mayfay_hackaton/widgets/custom_button.dart';
import 'package:mayfay_hackaton/widgets/custom_text_new_field.dart';
import 'package:mayfay_hackaton/widgets/drop_down.dart';
import 'package:mayfay_hackaton/widgets/test.dart';

class TodoListAddPage extends StatelessWidget {
  const TodoListAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                height: 90,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Tambah Todo List Baru',
                    style: semiBoldTextStyle.copyWith(
                      fontSize: 16,
                      color: kBlackColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 26),
              Column(
                children: [
                  const DropDown(),
                  const CustomTextNewField(
                    title: 'Kegiatan',
                    hintText: 'Tulis Kegiatanmu',
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.number,
                  ),
                  const CalenderContainer(
                    title: 'Tanggal',
                    hintText: 'Pilih Tanggal',
                  ),
                  const TestDeh(),
                  const CalenderContainer(
                    title: 'Tanggal',
                    hintText: 'Pilih Tanggal',
                  ),
                  const CustomTextNewField(
                    title: 'Catatan',
                    hintText: 'Tambahkan Catatan',
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.number,
                  ),
                  Container(
                    margin: const EdgeInsets.all(24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: CustomButton(
                            buttonName: 'Kembali',
                            warnaBackground: Colors.transparent,
                            warnaBorder: kGrey4Color,
                            warnaText: kGrey3Color,
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        InkWell(
                          child: CustomButton(
                            buttonName: 'Tambah',
                            warnaBackground: kPrimaryColor,
                            warnaBorder: kPrimaryColor,
                            warnaText: kWhite1Color,
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
