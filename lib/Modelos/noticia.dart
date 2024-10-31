List<Noticia> listaNoticiaFromJson(List str) => List<Noticia>.from(
      str.map((x) => Noticia.fromJson(x)),
    );

class Noticia {
  Noticia(
      {this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content});

  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  DateTime? publishedAt;
  String? content;

  factory Noticia.fromJson(Map<String, dynamic> json) {
    return Noticia(
      author: json["author"].toString(),
      title: json["title"],
      description: json["description"].toString(),
      url: json["url"].toString(),
      urlToImage: json["urlToImage"].toString(),
      publishedAt: DateTime.parse(json["publishedAt"]),
      content: json["content"].toString(),
    );
  }

  tieneUrl() {
    return url != null && url != '';
  }
}
