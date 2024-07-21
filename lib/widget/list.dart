import 'package:savory_secrets/model/recipes_model.dart';

// header Define your classifications
List<Header> classifications = [
  Header(header: 'All'),
  Header(header: 'Breakfast'),
  Header(header: 'Lunch'),
  Header(header: 'Dinner'),
];

// Sample data
final List<Recipe> recipes = [
  Recipe(
    image: 'assets/pasta.jpg',
    title: 'Spaghetti Carbonara',
    ingredients: [
      '200g Spaghetti',
      '100g Pancetta',
      '2 large eggs',
      '50g Pecorino cheese',
      '50g Parmesan cheese',
      '2 plump garlic cloves',
      '50g unsalted butter',
      'Salt and black pepper'
    ],
    instructions: [
      'Cook the spaghetti in a large pan of boiling salted water until al dente.',
      'Fry the pancetta with the garlic in a little hot butter until golden and crisp.',
      'Beat the eggs in a bowl, then add the grated cheeses and mix together.',
      'Drain the pasta and return it to the pan.',
      'Quickly add the pancetta and egg mixture to the pasta, and toss everything together.',
      'Serve immediately with a little sprinkling of the remaining cheese and a grating of black pepper.'
    ], classification: 'Breakfast',
  ),
  Recipe(
    image: 'assets/meals.jpg',
    title: 'Chicken Curry',
    ingredients: [
      '1kg Chicken thighs',
      '2 large onions',
      '3 cloves garlic',
      '1 thumb-sized piece of ginger',
      '2 tbsp curry powder',
      '400ml coconut milk',
      '400g chopped tomatoes',
      'Fresh coriander',
      'Salt and pepper'
    ],
    instructions: [
      'Chop the onions, garlic, and ginger finely.',
      'Heat some oil in a large pan and add the onions, garlic, and ginger. Cook until softened.',
      'Add the curry powder and cook for another minute.',
      'Add the chicken and cook until it is no longer pink on the outside.',
      'Pour in the coconut milk and chopped tomatoes.',
      'Bring to a boil, then reduce the heat and simmer for 30-40 minutes until the chicken is cooked through.',
      'Season with salt and pepper to taste, and garnish with fresh coriander before serving.'
    ], classification: 'Lunch',
  ),
  Recipe(
    image: 'assets/vegetables.jpg',
    title: 'Vegetable Stir Fry',
    ingredients: [
      '1 red bell pepper',
      '1 yellow bell pepper',
      '1 broccoli',
      '2 carrots',
      '100g snap peas',
      '2 tbsp soy sauce',
      '1 tbsp sesame oil',
      '2 cloves garlic',
      '1 thumb-sized piece of ginger',
      'Cooked rice or noodles',
      'Sesame seeds for garnish'
    ],
    instructions: [
      'Chop all the vegetables into bite-sized pieces.',
      'Heat the sesame oil in a large pan or wok.',
      'Add the garlic and ginger, and cook for 1-2 minutes until fragrant.',
      'Add the vegetables and stir-fry over high heat for 5-7 minutes until they are tender but still crisp.',
      'Add the soy sauce and cook for another 2 minutes.',
      'Serve the stir fry over cooked rice or noodles, and garnish with sesame seeds.'
    ], classification: 'Dinner',
  ),
  Recipe(
    image: 'assets/Beef.jpg',
    title: 'Beef Tacos',
    ingredients: [
      '500g ground beef',
      '1 onion',
      '2 cloves garlic',
      '1 packet taco seasoning',
      '8 taco shells',
      '1 cup shredded lettuce',
      '1 cup shredded cheese',
      '1 cup diced tomatoes',
      'Sour cream',
      'Salsa'
    ],
    instructions: [
      'Chop the onion and garlic finely.',
      'Cook the ground beef in a pan over medium heat until browned.',
      'Add the onion and garlic, and cook until softened.',
      'Stir in the taco seasoning and a little water, and cook until the sauce thickens.',
      'Heat the taco shells according to the package instructions.',
      'Assemble the tacos by filling the shells with the beef mixture, and topping with lettuce, cheese, tomatoes, sour cream, and salsa.'
    ], classification: 'Dinner',
  ),
  Recipe(
    image: 'assets/pancakes.jpg',
    title: 'Pancakes',
    ingredients: [
      '1 cup flour',
      '2 tbsp sugar',
      '2 tsp baking powder',
      '1/2 tsp salt',
      '1 cup milk',
      '1 egg',
      '2 tbsp melted butter',
      'Maple syrup',
      'Fresh berries'
    ],
    instructions: [
      'In a large bowl, whisk together the flour, sugar, baking powder, and salt.',
      'In another bowl, whisk together the milk, egg, and melted butter.',
      'Pour the wet ingredients into the dry ingredients and mix until just combined.',
      'Heat a lightly oiled griddle or frying pan over medium-high heat.',
      'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake.',
      'Cook until bubbles form on the surface, then flip and cook until browned on the other side.',
      'Serve the pancakes hot with maple syrup and fresh berries.'
    ], classification: 'Lunch',
  ),
  Recipe(
    image: 'assets/pancakes.jpg',
    title: 'Pancakes',
    ingredients: [
      '1 cup flour',
      '2 tbsp sugar',
      '2 tsp baking powder',
      '1/2 tsp salt',
      '1 cup milk',
      '1 egg',
      '2 tbsp melted butter',
      'Maple syrup',
      'Fresh berries'
    ],
    instructions: [
      'In a large bowl, whisk together the flour, sugar, baking powder, and salt.',
      'In another bowl, whisk together the milk, egg, and melted butter.',
      'Pour the wet ingredients into the dry ingredients and mix until just combined.',
      'Heat a lightly oiled griddle or frying pan over medium-high heat.',
      'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake.',
      'Cook until bubbles form on the surface, then flip and cook until browned on the other side.',
      'Serve the pancakes hot with maple syrup and fresh berries.'
    ], classification: 'Dinner',
  ),
];
