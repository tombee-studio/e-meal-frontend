import 'package:flutter/material.dart';
import 'package:frontend/models/recipe.dart';

class RecipeDetailView extends StatelessWidget {
  final Recipe recipe;

  const RecipeDetailView({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(recipe.url),
      ],
    );
  }
}