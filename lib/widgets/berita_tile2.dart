import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mayfay_hackaton/style.dart';
import 'package:http/http.dart' as http;

class BeritaTile2 extends StatefulWidget {
  const BeritaTile2({Key? key}) : super(key: key);

  @override
  _BeritaTileState createState() => _BeritaTileState();
}

class _BeritaTileState extends State<BeritaTile2> {
  List _get = [];

  @override
  void initState() {
    _getData();
    super.initState();
  }

  Future _getData() async {
    try {
      final response = await http.get(Uri.parse(
          "https://newsapi.org/v2/top-headlines?country=id&category=business&apiKey=41aee1a217464053b4486c3eea7f1760"));

      if (response.statusCode == 200) {
        debugPrint(response.body);
        final data = jsonDecode(response.body);
        setState(() {
          _get = data['articles'];
        });
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: _get.length,
        itemBuilder: (context, index) {
          return InkWell(
            child: Container(
              height: 77,
              margin: const EdgeInsets.only(left: 24, right: 24, bottom: 20),
              child: Row(
                children: [
                  SizedBox(
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _get[index]['publishedAt'],
                          style: mediumTextStyle.copyWith(
                            fontSize: 8,
                            color: kGrey3Color,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          child: Flexible(
                            child: Text(
                              _get[index]['title'],
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
                    child: _get[index]['urlToImage'] != null
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(
                              _get[index]['urlToImage'],
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                          )
                        : const Center(),
                  ),
                ],
              ),
            ),
            onTap: () {},
          );
        },
      ),
    );
  }
}
