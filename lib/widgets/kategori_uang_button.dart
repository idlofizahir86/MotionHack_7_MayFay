import 'package:flutter/material.dart';
import 'package:mayfay_hackaton/style.dart';

class KategoriUang extends StatefulWidget {
  final String title;
  final Color? color;
  const KategoriUang({
    Key? key,
    this.title = '',
    this.color,
  }) : super(key: key);

  @override
  State<KategoriUang> createState() => _KategoriUangState();
}

class _KategoriUangState extends State<KategoriUang> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        height: 32,
        width: 154,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: isClicked ? widget.color! : kGrey5Color,
          ),
        ),
        child: Text(
          widget.title,
          style: mediumTextStyle.copyWith(
            fontSize: 14,
            color: kGrey4Color,
          ),
        ),
      ),
      onTap: () {
        setState(() {
          isClicked = !isClicked;
        });
      },
    );
  }
}
