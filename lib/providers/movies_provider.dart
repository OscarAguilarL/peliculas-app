// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:peliculas/models/models.dart';

class MoviesProvider extends ChangeNotifier {
  final String _baseUrl = 'api.themoviedb.org';
  final String _apiKey = '26226bc0d351dd2e356a4f74d1f1d276';
  final String _language = 'es-ES';

  List<Movie> onDisplayMovies = [];

  MoviesProvider() {
    getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    Uri url = Uri.https(_baseUrl, '3/movie/now_playing', {
      'api_key': _apiKey,
      'language': _language,
      'page': '1',
    });

    final response = await http.get(url);

    if (response.statusCode != 200) return print('error');
    final nowPlayingResponse = NowPlayingResponse.fromJson(response.body);

    onDisplayMovies = nowPlayingResponse.results;

    notifyListeners();
  }
}
