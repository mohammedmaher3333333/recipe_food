import 'package:flutter/material.dart';
import 'package:savory_secrets/model/recipes_model.dart';
import 'package:savory_secrets/widget/list.dart';
import 'package:savory_secrets/widget/search_bar.dart';
import 'package:savory_secrets/widget/widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController searchController = TextEditingController();
  List<Recipe> filteredRecipes = recipes;
  String selectedClassification = 'All';

  void _searchRecipes(String query) {
    final results = recipes.where((recipe) {
      final titleLower = recipe.title.toLowerCase();
      final searchLower = query.toLowerCase();

      return titleLower.contains(searchLower) &&
          (selectedClassification == 'All' || recipe.classification == selectedClassification);
    }).toList();

    setState(() {
      filteredRecipes = results;
    });
  }

  void _onClassificationChanged(String classification) {
    setState(() {
      selectedClassification = classification;
      _searchRecipes(searchController.text); // Reapply the search filter
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.green.shade100,
              Colors.white,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Food Day",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SearchBarTool(
                searchController: searchController,
                onSearch: _searchRecipes,
              ),
              SizedBox(
                height: 20,
              ),
              BuildTopChip(
                onClassificationChanged: _onClassificationChanged,
              ),
              Expanded(
                child: BuildBottomChip(
                  recipes: filteredRecipes,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
