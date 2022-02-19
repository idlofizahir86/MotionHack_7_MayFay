import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mayfay_hackaton/style.dart';

class ToDoList extends StatefulWidget {
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
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  bool selesai = false;
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
              GestureDetector(
                onTap: () {
                  setState(() {
                    selesai = !selesai;
                  });
                },
                child: SizedBox(
                  height: 24,
                  width: 24,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: const Color(0xffF1F1F5),
                    child: selesai
                        ? SvgPicture.asset(
                            'assets/icons/icon_check_circle.svg',
                          )
                        : Container(),
                  ),
                ),
              ),
              const SizedBox(
                width: 14,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.judul,
                    style: mediumTextStyle.copyWith(
                        fontSize: 14,
                        color: kSecondaryColor,
                        decoration: selesai
                            ? TextDecoration.lineThrough
                            : TextDecoration.none),
                  ),
                  Text(
                    widget.keterangan,
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
                widget.hari,
                style: mediumTextStyle.copyWith(
                  fontSize: 14,
                  color: kSecondaryColor,
                ),
              ),
              Text(
                '${widget.waktu}, ${widget.tanggal}',
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
