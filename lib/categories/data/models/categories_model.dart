class CategoriesModel {
  final int id;
  final String title;
  final String image;
  final bool main;

  CategoriesModel({
    required this.id,
    required this.image,
    required this.title,
    required this.main
  });

  factory CategoriesModel.fromJson(Map<String, dynamic> json) {
    return CategoriesModel(
      id: json["id"],
      image: json["image"],
      title: json["title"],
      main: json['main'],
    );
  }
}
