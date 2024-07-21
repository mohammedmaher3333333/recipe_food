import 'package:flutter/material.dart';

class SearchBarTool extends StatelessWidget {
  final TextEditingController searchController;
  final ValueChanged<String> onSearch;

  const SearchBarTool({
    Key? key,
    required this.searchController,
    required this.onSearch,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: searchController,
      onChanged: onSearch,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        hintText: 'Search for foods',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: Colors.grey[200],
      ),
    );
  }
}
