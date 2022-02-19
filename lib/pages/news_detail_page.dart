import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mayfay_hackaton/model/berita_model.dart';
import 'package:mayfay_hackaton/style.dart';

class NewsDetail extends StatefulWidget {
  final Berita berita;

  const NewsDetail({Key? key, required this.berita}) : super(key: key);

  @override
  _NewsDetailState createState() => _NewsDetailState();
}

class _NewsDetailState extends State<NewsDetail> {
  bool dragValue = false;
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite1Color,
      body: SafeArea(
          child: Stack(
        children: [
          Image.network(
            widget.berita.urlToImage,
            height: 220,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          GestureDetector(
            onPanDown: (value) {
              isVisible = !isVisible;
              setState(() {});
            },
            child: ListView(
              children: [
                const SizedBox(
                  height: 200,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(15),
                    ),
                    color: kWhite1Color,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                widget.berita.publishedAt,
                                style: mediumTextStyle.copyWith(
                                  fontSize: 10,
                                  color: kGrey3Color,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Flexible(
                                child: Text(
                                  widget.berita.title,
                                  style: semiBoldTextStyle.copyWith(
                                    fontSize: 14,
                                    color: kBlackColor,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: CircleAvatar(),
                                ),
                                const SizedBox(width: 14),
                                Text(
                                  widget.berita.author,
                                  style: semiBoldTextStyle.copyWith(
                                    fontSize: 14,
                                    color: kBlackColor,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 14),
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Flexible(
                                child: Text(
                                  widget.berita.description,
                                  style: regulerTextStyle.copyWith(
                                    fontSize: 14,
                                    color: kGrey2Color,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 30,
              horizontal: 24,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Visibility(
                visible: isVisible,
                child: SvgPicture.asset(
                  'assets/icons/icon_arrow_back_circle.svg',
                  width: 30,
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
