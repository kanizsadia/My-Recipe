import 'package:flutter_application_6/app/modules/recipe/providers/recipe_provider.dart';
import 'package:get/get.dart';

class RecipeController extends GetxController with StateMixin<dynamic> {
  @override
  void onInit() {
    super.onInit();
    RecipeProvider().call().then((value) {
      print(value['feed']);
      change(value['feed'], status: RxStatus.success());
    }, onError: (error) {
      print(value["feed"]);
      change(null, status: RxStatus.error(error.toString()));
    });
  }
}
