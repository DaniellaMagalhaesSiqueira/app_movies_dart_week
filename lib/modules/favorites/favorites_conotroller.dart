import 'package:app_filmes/models/movie_model.dart';
import 'package:get/get.dart';

import 'package:app_filmes/application/auth/auth_servive.dart';
import 'package:app_filmes/services/movies/movie_service.dart';

class FavoritesConotroller extends GetxController {
  final MovieService _movieService;
  final AuthService _authService;

  var movies = <MovieModel>[].obs;

  FavoritesConotroller({
    required MovieService movieService,
    required AuthService authService,
  })  : _movieService = movieService,
        _authService = authService;

  @override
  void onReady() {
    super.onReady();
    _getFavorites();
  }

  Future<void> _getFavorites() async {
    var user = _authService.user;
    if (user != null) {
      var favorites = await _movieService.getFavoritiesMovies(user.uid);
      movies.assignAll(favorites);
    }
  }

  Future<void> removeFavorite(MovieModel movie) async {
    var user = _authService.user;
    if (user != null) {
      await _movieService.addOrRemoveFavorite(
          user.uid, movie.copyWith(favorite: false));
      movies.remove(movie);
    }
  }
}
