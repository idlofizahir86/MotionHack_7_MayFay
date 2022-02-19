import 'source_model.dart';

class Berita {
  Source source;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;

  Berita({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  factory Berita.fromJson(Map<String, dynamic> json) {
    return Berita(
      source: Source.fromJson(json['source']),
      author: (json['author'] ?? '').toString(),
      title: (json['title'] ?? '').toString(),
      description: (json['description'] ?? ''.toString()),
      url: (json['url'] ?? '').toString(),
      urlToImage: (json['urlToImage'] ?? '').toString(),
      publishedAt: (json['publishedAt'] ?? '').toString(),
      content: (json['content'] ?? '').toString(),
    );
  }
}
