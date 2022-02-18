import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mayfay_hackaton/style.dart';

class RiwayatList extends StatelessWidget {
  final formatCurrency = NumberFormat.simpleCurrency(locale: 'id_ID');
  final String judul;
  final String keterangan;
  final String tanggal;
  final double nominal;
  final bool pemasukkan;
  RiwayatList({
    Key? key,
    this.judul = '',
    this.keterangan = '',
    this.tanggal = '',
    this.nominal = 0,
    this.pemasukkan = true,
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
                    SizedBox(
                      height: 46,
                      width: 46,
                      child: CircleAvatar(
                        backgroundColor: kGrey4Color,
                      ),
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
                        judul,
                        style: semiBoldTextStyle.copyWith(
                          fontSize: 14,
                          color: kSecondaryColor,
                        ),
                      ),
                      Text(
                        keterangan,
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
                        tanggal,
                        style: regulerTextStyle.copyWith(
                          fontSize: 10,
                          color: kGrey3Color,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        '${pemasukkan ? '+' : '-'} ${formatCurrency.format(nominal)}',
                        style: semiBoldTextStyle.copyWith(
                          fontSize: 14,
                          color: pemasukkan ? kPrimaryColor : kRedColor,
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
