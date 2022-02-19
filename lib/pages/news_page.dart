// import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mayfay_hackaton/style.dart';
import 'package:mayfay_hackaton/widgets/berita_tile.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                  left: 24,
                  right: 24,
                ),
                height: 60,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Berita Terbaru',
                    style: semiBoldTextStyle.copyWith(
                      fontSize: 16,
                      color: kBlackColor,
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 20),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
                    width: MediaQuery.of(context).size.width,
                    height: 36,
                    decoration: BoxDecoration(
                        color: kWhite1Color,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: kGrey4Color)),
                    child: Stack(
                      children: [
                        TextFormField(
                          textAlignVertical: TextAlignVertical.bottom,
                          cursorColor: kBlackColor,
                          decoration: InputDecoration(
                            hintText: 'Cari Berita Terbaru',
                            hintStyle: mediumTextStyle.copyWith(
                              fontSize: 14,
                              color: kGrey4Color,
                            ),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: SvgPicture.asset(
                            'assets/icons/icon_search.svg',
                            width: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const BeritaTile(),
              // const BeritaTile(),
              // FutureBuilder(builder: builder)
            ],
          ),
        ),
      ),
    );
  }
}
