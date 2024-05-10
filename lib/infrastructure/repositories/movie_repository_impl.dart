import 'package:cinemapedia/domain/datasources/movies_datasource.dart';
import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/domain/repositories/movies_repository.dart';

class MovieRepositoryImpl extends MoviesRepository {
  final MoviesDatasource datasouce;

  MovieRepositoryImpl(this.datasouce);

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) {
    return datasouce.getNowPlaying(page: page);
  }

  @override
  Future<List<Movie>> getPopular({int page = 1}) {
    return datasouce.getPopular(page: page);
  }

  @override
  Future<List<Movie>> getUpcoming({int page = 1}) {
    return datasouce.getUpcoming(page: page);
  }

  @override
  Future<List<Movie>> getTopRated({int page = 1}) {
    return datasouce.getTopRated(page: page);
  }
}
