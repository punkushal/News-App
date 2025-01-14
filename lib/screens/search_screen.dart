import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  static const String routeName = 'search';
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: searchController,
          decoration: InputDecoration(
            hintText: 'Search',
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
