import 'package:app_filmes/models/movie_detail_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MovieDetailContentCompanies extends StatelessWidget {
  final MovieDetailModel? movie;
  const MovieDetailContentCompanies({Key? key, required this.movie})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: EdgeInsets.only(bottom: 5.0),
      child: RichText(
        text: TextSpan(
          text: 'Companhia(s) Produtora(s): ',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xff222222),
          ),
          children: [
            TextSpan(
              text: movie?.productionCompanies.join(', ') ?? '',
              style: TextStyle(
                  color: Color(0xff222222), fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}
