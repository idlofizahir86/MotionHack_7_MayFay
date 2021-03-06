import 'package:flutter/material.dart';
import 'package:mayfay_hackaton/style.dart';
import 'package:mayfay_hackaton/widgets/custom_button.dart';
import 'package:mayfay_hackaton/widgets/custom_text_new_field.dart';
import 'package:mayfay_hackaton/widgets/drop_down.dart';
import 'package:mayfay_hackaton/widgets/kategori_uang_button.dart';

class KeuanganAddPage extends StatefulWidget {
  const KeuanganAddPage({Key? key}) : super(key: key);

  @override
  State<KeuanganAddPage> createState() => _KeuanganAddPageState();
}

class _KeuanganAddPageState extends State<KeuanganAddPage> {
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
                    'Tambah Catatan Baru',
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
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        KategoriUang(
                          title: 'Pemasukkan',
                          color: kPrimaryColor,
                        ),
                        KategoriUang(
                          title: 'Pengeluaran',
                          color: kRedColor,
                        ),
                      ],
                    ),
                  ),
                  const DropDown(),
                  const CustomTextNewField(
                    title: 'Nominal',
                    hintText: 'Masukkan Nominal',
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.number,
                  ),
                  const CustomTextNewField(
                    title: 'Keterangan',
                    hintText: 'Tulis Keterangan',
                    textInputAction: TextInputAction.next,
                  ),
                  const CustomTextNewField(
                    title: 'Deskripsi',
                    hintText: 'Tambahkan Deskripsi',
                    textInputAction: TextInputAction.done,
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
