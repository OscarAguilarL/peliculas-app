import 'package:flutter/material.dart';

class MovieSearchDelegate extends SearchDelegate {
  @override
  String? get searchFieldLabel => 'Buscar una pelicula';

  @override
  List<Widget>? buildActions(BuildContext context) {
    return const [
      Text('Build Actions'),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return const Text('buildLeading');
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Text('buildLeading');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Text('buildLeading: $query');
  }
}
