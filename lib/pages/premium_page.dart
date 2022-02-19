import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mayfay_hackaton/style.dart';

class PremiumPage extends StatefulWidget {
  const PremiumPage({Key? key}) : super(key: key);

  @override
  State<PremiumPage> createState() => _PremiumPageState();
}

class _PremiumPageState extends State<PremiumPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 0), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const Body(),
          ),
          (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Body();
  }
}

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.fromLTRB(33, 42, 58, 0),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/background_premium.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                child: SvgPicture.asset(
                  'assets/icons/icon_arrow_back_circle_2.svg',
                  width: 44,
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/navbar');
                },
              ),
              const SizedBox(height: 48),
              Text(
                'Nikmati Aplikasi Anda Tanpa Iklan dan Konsultasikan Masalahmu Bersama Mentor',
                style: headingTextStyle.copyWith(
                  fontSize: 24,
                  color: kWhite1Color,
                ),
              ),
              const SizedBox(height: 50),
              InkWell(
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 184,
                  decoration: BoxDecoration(
                    color: kWhite1Color,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    'Rp. 49.000/bulan',
                    style: headingTextStyle.copyWith(
                        fontSize: 16, color: kSecondaryColor),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
