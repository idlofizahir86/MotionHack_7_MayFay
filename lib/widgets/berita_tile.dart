import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mayfay_hackaton/model/berita_model.dart';
import 'package:mayfay_hackaton/pages/news_detail_page.dart';
import 'package:mayfay_hackaton/services/api_berita.dart';
import 'package:mayfay_hackaton/style.dart';

class BeritaTile extends StatefulWidget {
  const BeritaTile({Key? key}) : super(key: key);

  @override
  _BeritaTState createState() => _BeritaTState();
}

class _BeritaTState extends State<BeritaTile> {
  ApiBerita client = ApiBerita();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: client.getBerita(),
      builder: (BuildContext context, AsyncSnapshot<List<Berita>> snapshot) {
        if (snapshot.hasData) {
          List<Berita> berita = snapshot.data!;
          return SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemCount: berita.length,
              itemBuilder: (context, index) {
                return InkWell(
                  child: Container(
                    height: 77,
                    margin:
                        const EdgeInsets.only(left: 24, right: 24, bottom: 20),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                berita[index].publishedAt,
                                style: mediumTextStyle.copyWith(
                                  fontSize: 8,
                                  color: kGrey3Color,
                                ),
                              ),
                              SizedBox(
                                width: 200,
                                child: Flexible(
                                  child: Text(
                                    berita[index].title,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: semiBoldTextStyle.copyWith(
                                      fontSize: 14,
                                      color: kBlackColor,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 77,
                          width: 110,
                          decoration: BoxDecoration(
                            color: kGrey3Color,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          // ignore: unnecessary_null_comparison
                          child: berita[index].urlToImage != null
                              ? ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                    berita[index].urlToImage,
                                    width: 100,
                                    fit: BoxFit.cover,
                                  ),
                                )
                              : const Center(),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NewsDetail(
                                berita: berita[index],
                              )),
                    );
                  },
                );
              },
            ),
          );
        }
        return Center(
          child: SpinKitThreeInOut(
            color: kPrimaryColor,
            size: 35,
          ),
        );
      },
    );
  }
}
