import 'package:flutter/material.dart';
import 'package:savory_secrets/model/recipes_model.dart';

class RecipeDetailPage extends StatelessWidget {
  final Recipe recipe;

  const RecipeDetailPage({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(recipe.image, fit: BoxFit.cover),
              const SizedBox(height: 16),
              Text(
                'Ingredients',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 8),
              for (var ingredient in recipe.ingredients)
                Text(
                  '- $ingredient',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              const SizedBox(height: 16),
              Text(
                'Instructions',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: 8),
              for (var instruction in recipe.instructions)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Text(
                    instruction,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
