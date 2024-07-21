class Recipe {
  final String image;
  final String title;
  final List<String> ingredients;
  final List<String> instructions;
  final String classification; // Add this field

  Recipe({
    required this.image,
    required this.title,
    required this.ingredients,
    required this.instructions,
    required this.classification, // Add this parameter
  });

  String get subtitle => '${ingredients.length}/${ingredients.length} Necessary Products';
}



class Header {
  final String header;
  bool isActive;

  Header({required this.header, this.isActive = false});
}
