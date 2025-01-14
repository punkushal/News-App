class News {
  final String title;
  final String description;
  //website url
  final String url;
  final String urlToImage;
  final DateTime publishedAt;
  final String source;

  News({
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.source,
  });

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
      title: json['title'],
      description: json['description'],
      url: json['url'],
      urlToImage: json['urlToImage'],
      publishedAt: json['publishedAt'],
      source: json['source']['name'],
    );
  }
}
