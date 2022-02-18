import 'package:flutter/material.dart';
import 'package:mayfay_hackaton/style.dart';
import 'package:mayfay_hackaton/widgets/drop_down.dart';

class KeuanganAddPage extends StatelessWidget {
  const KeuanganAddPage({Key? key}) : super(key: key);

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
                height: 110,
                child: Stack(
                  children: [
                    InkWell(
                      child: const Icon(Icons.close_rounded),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Tambah Catatan Baru',
                        style: semiBoldTextStyle.copyWith(
                          fontSize: 16,
                          color: kBlackColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 26),
              Column(
                children: const [
                DropDown(),],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
