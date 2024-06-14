class Album{
  String name;
  String artist;
  String imageUrl;
  String artistNameImageUrl;
  DateTime releaseDate;
  String genre;
  String description;
  List<String> songs;

  Album({
    required this.name,
    required this.artist,
    required this.imageUrl,
    required this.artistNameImageUrl,
    required this.releaseDate,
    required this.genre,
    required this.description,
    required this.songs,
  });

  factory Album.fromJson(Map<String, dynamic> json){
    return Album(
      name: json['name'],
      artist: json['artist'],
      imageUrl: json['imageUrl'],
      artistNameImageUrl: json['artistNameImageUrl'],
      releaseDate: DateTime.parse(json['releaseDate']),
      genre: json['genre'],
      description: json['description'],
      songs: List<String>.from(json['songs']),
    );
  }
}