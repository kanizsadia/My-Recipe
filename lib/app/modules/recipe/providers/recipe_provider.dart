import 'package:get/get.dart';

class RecipeProvider extends GetConnect {
  Future<dynamic> call() async {
    final response = await get(
      'https://yummly2.p.rapidapi.com/feeds/list',
      query: {"limit": "18", "start": "0", "tag": "list.recipe.popular"},
      contentType: "Application/json",
      headers: {
        "x-rapidapi-key": '1d94f124a7msh9b1c2b16fb31c8bp16054cjsn79826ab4e3c7',
        "x-rapidapi-host": "yummly2.p.rapidapi.com",
        "useQueryString": "true"
      },
    );
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return response.body;
    }
  }
}
