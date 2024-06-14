import 'package:album_detail/entity/artifact.dart';

import 'entity/album.dart';

class AlbumRepo {
  static Future<Album> getAlbums() async {
    return Future.delayed(const Duration(milliseconds: 300), () => Album(
      name: 'Desire, I Want to Turn Into You',
      artist: 'Caroline Polachek',
      imageUrl: 'assets/images/desire_vinyl.webp',
      artistNameImageUrl: 'assets/images/caroline_name.png',
      releaseDate: DateTime(2023, 6, 28),
      genre: 'Indie Pop',
      description: 'Caroline Polachek’s best album of her career is a transformative pop experience, a passionate, richly melodic odyssey into the darkest corners of love.',
      songs: [
        'Welcome to My Island',
        'Pretty In Possible',
        'Bunny Is a Rider',
        'Sunset',
        'Crude Drawing of An Angel',
        'I Believe',
        'Fly To You (feat. Grimes & Dido)',
        'Blood and Butter',
        'Hopedrunk Everasking',
        'Butterfly Net',
        'Smoke',
        'Billions',
      ],
    ));
  }

  static Future<List<Artifact>> getMoreProducts() async {
    return Future.delayed(const Duration(milliseconds: 300), () => [
      Artifact(
        name: 'Pang-VINYL',
        imageUrl: 'assets/images/pang.webp',
        artist: 'Caroline Polachek',
        releaseDate: DateTime(2023, 6, 28),
        price: 33.99,
      ),
      Artifact(
        name: 'Desire, I Want to Turn Into You-CD',
        imageUrl: 'assets/images/desire_cd.webp',
        artist: 'Caroline Polachek',
        releaseDate: DateTime(2023, 6, 28),
        price: 18.99,
      ),
      Artifact(
        name: 'Billions-VINYL',
        imageUrl: 'assets/images/billions_vinyl.webp',
        artist: 'Caroline Polachek',
        releaseDate: DateTime(2023, 6, 28),
        price: 26.99,
      ),
      Artifact(
        name: 'Desire Tote Bag',
        imageUrl: 'assets/images/desire_tote_bag.webp',
        artist: 'Caroline Polachek',
        releaseDate: DateTime(2023, 6, 28),
        price: 17.99,
      ),
    ]);
  }
}