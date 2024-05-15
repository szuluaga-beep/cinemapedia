import 'package:flutter/material.dart';

class SearchMovieDelegate extends SearchDelegate {
  
  @override
  String get searchFieldLabel => 'Buscar película';

  @override
  List<Widget>? buildActions(Object context) {
    return [const Text('BuldActions')];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return const Text('buildLeading');
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Text('buildResults');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return const Text('buildSuggestions');
  }
}
