class Haber {
  String haberTitle;
  String image;
  String detailLink;
  List<String> images;
  List<String> paragraphs;

  Haber({
    required this.haberTitle,
    required this.image,
    required this.detailLink,
    required this.images,
    required this.paragraphs,
  });

  factory Haber.fromJson(Map<String, dynamic> json) {
    return Haber(
      haberTitle: json['haberTitle'],
      image: json['image'],
      detailLink: json['detailLink'],
      images: List<String>.from(json['images']),
      paragraphs: List<String>.from(json['paragraphs']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'haberTitle': haberTitle,
      'image': image,
      'detailLink': detailLink,
      'images': images,
      'paragraphs': paragraphs,
    };
  }
}
