import 'package:flutter/material.dart';
import 'package:savory_secrets/model/recipes_model.dart';
import 'package:savory_secrets/screens/details_page.dart';
import 'package:savory_secrets/widget/list.dart';

// Build Top Chip for items
class BuildTopChip extends StatefulWidget {
  final Function(String) onClassificationChanged; // Callback to notify changes

  const BuildTopChip({Key? key, required this.onClassificationChanged}) : super(key: key);

  @override
  State<BuildTopChip> createState() => _BuildTopChipState();
}

class _BuildTopChipState extends State<BuildTopChip> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          classifications.length,
              (index) => GestureDetector(
            onTap: () {
              setState(() {
                activeIndex = index;
                widget.onClassificationChanged(classifications[index].header); // Notify the change
              });
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: activeIndex == index ? Colors.green : Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                classifications[index].header,
                style: TextStyle(
                  color: activeIndex == index ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Build Bottom Chip for items
class BuildBottomChip extends StatelessWidget {
  final List<Recipe> recipes;

  const BuildBottomChip({
    Key? key,
    required this.recipes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: recipes.length,
      itemBuilder: (BuildContext context, int index) {
        final recipe = recipes[index];
        return InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => RecipeDetailPage(recipe: recipe),
              ),
            );
          },
          child: Card(
            margin: const EdgeInsets.all(8),
            color: Colors.white,
            child: ListTile(
              leading: Image.asset(recipe.image,
                  width: 50, height: 100, fit: BoxFit.cover),
              title: Text(
                recipe.title,
                style: const TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(recipe.subtitle),
              trailing: const Icon(Icons.star),
            ),
          ),
        );
      },
    );
  }
}

