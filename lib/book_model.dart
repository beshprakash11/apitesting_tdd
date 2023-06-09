class BooksListModel {
  BooksListModel({
    required this.name,
    required this.auther,
    this.decription,
    this.amazon,
  });

  String name;
  String auther;
  String? decription;
  String? amazon;

  factory BooksListModel.fromJson(Map<String, dynamic> json) => BooksListModel(
        name: json["name"],
        auther: json["auther"],
        decription: json["decription"],
        amazon: json["amazon"],
      );
}
