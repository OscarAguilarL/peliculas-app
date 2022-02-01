// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';

class MoviesProvider extends ChangeNotifier {
  MoviesProvider() {
    print('Movies provider inicializado');
    this.getOnDisplayMovies();
  }

  getOnDisplayMovies() {
    print('getOnDisplayMovies');
  }
}
