import 'package:app_filmes/models/movie_detail_model.dart';
import 'package:app_filmes/models/movie_model.dart';
import 'package:app_filmes/repositories/movies/movies_repository.dart';
import 'package:app_filmes/services/movies/movie_service.dart';

class MovieServiceImpl implements MovieService {
  final MoviesRepository _moviesRepository;
  MovieServiceImpl({
    required MoviesRepository moviesRepository,
  }) : _moviesRepository = moviesRepository;
  @override
  Future<List<MovieModel>> getPopularMovies() =>
      _moviesRepository.getPopularMovies();

  @override
  Future<List<MovieModel>> getTopRated() => _moviesRepository.getTopRated();

  @override
  Future<MovieDetailModel?> getDetail(int id) =>
      _moviesRepository.getDetail(id);

  @override
  Future<void> addOrRemoveFavorite(String userId, MovieModel movie) =>
      _moviesRepository.addOrRemoveFavorite(userId, movie);

  @override
  Future<List<MovieModel>> getFavoritiesMovies(String userId) =>
      _moviesRepository.getFavoritiesMovies(userId);
}
