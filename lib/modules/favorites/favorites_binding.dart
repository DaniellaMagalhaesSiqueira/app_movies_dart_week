import 'package:app_filmes/modules/favorites/favorites_conotroller.dart';
import 'package:get/get.dart';

class FavoritesBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(FavoritesConotroller(
      authService: Get.find(),
      movieService: Get.find(),
    ));
  }
}
