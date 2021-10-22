class Movie {
  String? name;
  String? detail;
  String? imgUrl;

  Movie({this.name, this.detail, this.imgUrl});
  Movie.fromJson(json) {
    this.name = json['Name'];
    this.detail = json['Detail'];
    this.imgUrl = json['imgUrl'];
  }
}
