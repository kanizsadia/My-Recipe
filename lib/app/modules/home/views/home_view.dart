import 'package:flutter/material.dart';
import 'package:flutter_application_6/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Get.toNamed(Routes.RECIPE),
          child: const Text('go to recipe'),
        ),
      ),
    );
  }
}
