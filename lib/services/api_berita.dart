import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mayfay_hackaton/model/berita_model.dart';

class ApiBerita {
  final endPointUrl =
      "https://newsapi.org/v2/top-headlines?country=id&category=business&apiKey=41aee1a217464053b4486c3eea7f1760";

  Future<List<Berita>> getBerita() async {
    final response = await http.get(Uri.parse(endPointUrl));

    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);

      List<dynamic> body = json['articles'];

      List<Berita> berita =
          body.map((dynamic item) => Berita.fromJson(item)).toList();

      return berita;
    } else {
      throw ("Tidak ada berita");
    }
  }
}
