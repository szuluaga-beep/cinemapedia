import 'package:cinemapedia/domain/entities/actor.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/credits_response.dart';

class ActorMapper {
  static Actor castToEntity(Cast cast) => Actor(
      id: cast.id,
      name: cast.name,
      profilePath: cast.profilePath != null
          ? 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/${cast.profilePath}'
          : 'https://cdn1.iconfinder.com/data/icons/user-38/100/user-unknown-512.png',
      character: cast.character);
}
