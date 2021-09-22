import 'package:app_filmes/application/ui/widget/movie_card.dart';
import 'package:app_filmes/modules/favorites/favorites_conotroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavoritesPage extends GetView<FavoritesConotroller> {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favoritos'),
        automaticallyImplyLeading: false,
      ),
      body: Obx(() {
        return SingleChildScrollView(
          child: SizedBox(
            width: Get.width,
            child: Wrap(
              alignment: WrapAlignment.spaceAround,
              children: controller.movies
                  .map(
                    (m) => MovieCard(
                      movie: m,
                      favoriteCallBack: () => controller.removeFavorite(m),
                    ),
                  )
                  .toList(),
            ),
          ),
        );
      }),
    );
  }
}
