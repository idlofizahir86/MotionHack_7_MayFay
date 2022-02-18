import 'package:flutter/material.dart';
import 'package:mayfay_hackaton/style.dart';

class ToDoList extends StatelessWidget {
  final String judul;
  final String keterangan;
  final String hari;
  final String waktu;
  final String tanggal;
  const ToDoList({
    Key? key,
    this.judul = '',
    this.keterangan = '',
    this.hari = '',
    this.waktu = '',
    this.tanggal = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(14, 15, 14, 12),
      margin: const EdgeInsets.fromLTRB(24, 0, 24, 20),
      height: 60,
      decoration: BoxDecoration(
        color: kWhite1Color,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 30,
            color: Color.fromRGBO(0, 0, 0, 0.05),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const SizedBox(
                height: 24,
                width: 24,
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Color(0xffF1F1F5),
                ),
              ),
              const SizedBox(
                width: 14,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    judul,
                    style: mediumTextStyle.copyWith(
                      fontSize: 14,
                      color: kSecondaryColor,
                    ),
                  ),
                  Text(
                    keterangan,
                    style: regulerTextStyle.copyWith(
                      fontSize: 8,
                      color: kSecondaryColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                hari,
                style: mediumTextStyle.copyWith(
                  fontSize: 14,
                  color: kSecondaryColor,
                ),
              ),
              Text(
                '$waktu, $tanggal',
                style: regulerTextStyle.copyWith(
                  fontSize: 8,
                  color: kSecondaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
