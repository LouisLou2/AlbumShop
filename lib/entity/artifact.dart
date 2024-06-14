class Artifact{
  String name;
  String imageUrl;
  String artist;
  double price;
  DateTime releaseDate;

  Artifact({
    required this.name,
    required this.imageUrl,
    required this.artist,
    required this.releaseDate,
    required this.price,
  });

  factory Artifact.fromJson(Map<String,dynamic> json){
    return Artifact(
      name: json['name'],
      imageUrl: json['imageUrl'],
      artist: json['artist'],
      releaseDate: DateTime.parse(json['releaseDate']),
      price: json['price'].toDouble(),
    );
  }

}