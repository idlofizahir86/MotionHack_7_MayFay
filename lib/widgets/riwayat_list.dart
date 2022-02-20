import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:mayfay_hackaton/model/keuangan_model.dart';
import 'package:mayfay_hackaton/style.dart';

class RiwayatList extends StatelessWidget {
  final KeuanganModel keuangan;

  final formatCurrency = NumberFormat.currency(
    locale: 'id',
    symbol: '',
    decimalDigits: 0,
  );
  RiwayatList(
    this.keuangan, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      child: Column(
        children: [
          Container(
            height: 65,
            margin: const EdgeInsets.fromLTRB(24, 0, 24, 0),
            child: Row(
              children: [
                Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 46,
                          width: 46,
                          decoration: BoxDecoration(
                              color: kWhite1Color,
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        keuangan.pemasukkan
                            ? SvgPicture.asset(
                                'assets/icons/icon_bold_wallet.svg',
                                width: 24,
                                height: 24,
                              )
                            : SvgPicture.asset(
                                'assets/icons/icon_bold_keranjang.svg',
                                width: 24,
                                height: 24,
                              ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(width: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        keuangan.keterangan,
                        style: semiBoldTextStyle.copyWith(
                          fontSize: 14,
                          color: kSecondaryColor,
                        ),
                      ),
                      Text(
                        keuangan.deskripsi,
                        style: regulerTextStyle.copyWith(
                          fontSize: 10,
                          color: kGrey3Color,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        keuangan.tanggal,
                        style: regulerTextStyle.copyWith(
                          fontSize: 10,
                          color: kGrey3Color,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        '${keuangan.pemasukkan ? '+' : '-'} ${formatCurrency.format(keuangan.nominal)}',
                        style: semiBoldTextStyle.copyWith(
                          fontSize: 14,
                          color:
                              keuangan.pemasukkan ? kPrimaryColor : kRedColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: kGrey5Color,
          )
        ],
      ),
    );
  }
}
