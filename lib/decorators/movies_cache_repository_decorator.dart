// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:movieapp/decorators/movies_repository_decorator.dart';
import 'package:movieapp/models/movies_model.dart';
import 'package:movieapp/repositories/movies_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MoviesCacheRepositoryDecorator extends MoviesRepositoryDecorator {
  MoviesCacheRepositoryDecorator(MoviesRepository moviesRepository)
      : super(moviesRepository);

  @override
  Future<Movies> getMovies() async {
    try {
      Movies movies = await super.getMovies();
      _saveInCache(movies);
      return movies;
    } catch (e) {
      return await _getFromCache();
    }
  }

  _saveInCache(Movies movies) async {
    var preferences = await SharedPreferences.getInstance();
    String jsonMovies = jsonEncode(movies.toJson());
    preferences.setString('movies_cache', jsonMovies);
    print('salvei em cache os filmes: ' + jsonMovies);
  }

  Future<Movies> _getFromCache() async {
    var preferences = await SharedPreferences.getInstance();
    var moviesJsonString = preferences.getString('movies_cache')!;
    var json = jsonDecode(moviesJsonString);
    var movies = Movies.fromJson(json);
    print('recuperei do cache os filmes: ' + movies.toString());

    return movies;
  }
}
