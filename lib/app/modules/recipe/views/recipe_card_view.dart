import 'package:flutter/material.dart';

import 'package:get/get.dart';

class RecipeCardView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          Container(
            height: 200,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: Offset(0, 1),
                  blurRadius: 1,
                ),
              ],
              image: DecorationImage(
                image: AssetImage("assets/burger.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
