import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:peliculas/models/models.dart';

class MoviesProvider extends ChangeNotifier {
  final String _baseUrl = 'api.themoviedb.org';
  final String _apiKey = '26226bc0d351dd2e356a4f74d1f1d276';
  final String _language = 'es-ES';

  MoviesProvider() {
    print('Movies provider inicializado');
    getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    var url = Uri.https(_baseUrl, '3/movie/now_playing', {
      'api_key': _apiKey,
      'language': _language,
      'page': '1',
    });

    final response = await http.get(url);

    if (response.statusCode != 200) return print('error');
    final nowPlayingResponse = NowPlayingResponse.fromJson(response.body);

    print(nowPlayingResponse.results[0].title);
  }
}
