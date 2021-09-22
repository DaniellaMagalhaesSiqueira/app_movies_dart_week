import 'package:app_filmes/models/movie_detail_model.dart';
import 'package:app_filmes/modules/movies/widgets/movie_datail_content/movie_detail_content_companies.dart';
import 'package:app_filmes/modules/movies/widgets/movie_datail_content/movie_detail_content_credit.dart';
import 'package:app_filmes/modules/movies/widgets/movie_datail_content/movie_detail_content_main_cast.dart';
import 'package:app_filmes/modules/movies/widgets/movie_datail_content/movie_detail_content_title.dart';
import 'package:flutter/material.dart';

class MovieDatailContent extends StatelessWidget {
  final MovieDetailModel? movie;
  const MovieDatailContent({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MovieDetailContentTitle(movie: movie),
        MovieDetailContentCredit(movie: movie),
        MovieDetailContentCompanies(
          movie: movie,
        ),
        MovieDetailContentMainCast(movie: movie),
      ],
    );
  }
}
