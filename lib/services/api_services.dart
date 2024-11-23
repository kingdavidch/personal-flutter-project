// lib/services/api_services.dart
import 'package:dio/dio.dart';
import 'package:movie_app/models/movie.dart';

class ApiService {
  static const String baseUrl = 'https://api.themoviedb.org/3';
  static const String apiKey = '8d7fffc3bc2f47289d37bac528766b8b';
  final Dio _dio = Dio();

  Future<List<Movie>> getTrendingMovies() async {
    try {
      final response = await _dio.get(
        '$baseUrl/trending/movie/week',
        queryParameters: {'api_key': apiKey},
      );
      
      final movies = (response.data['results'] as List)
          .map((movie) => Movie.fromJson(movie))
          .toList();
          
      return movies;
    } catch (e) {
      throw Exception('Failed to load trending movies');
    }
  }

  Future<List<Movie>> getPopularMovies() async {
    try {
      final response = await _dio.get(
        '$baseUrl/movie/popular',
        queryParameters: {'api_key': apiKey},
      );
      
      final movies = (response.data['results'] as List)
          .map((movie) => Movie.fromJson(movie))
          .toList();
          
      return movies;
    } catch (e) {
      throw Exception('Failed to load popular movies');
    }
  }

  Future<List<Movie>> searchMovies(String query) async {
    try {
      final response = await _dio.get(
        '$baseUrl/search/movie',
        queryParameters: {
          'api_key': apiKey,
          'query': query,
        },
      );
      
      return (response.data['results'] as List)
          .map((movie) => Movie.fromJson(movie))
          .toList();
    } catch (e) {
      throw Exception('Failed to search movies');
    }
  }

  // Add method to get movie details
  Future<Map<String, dynamic>> getMovieDetails(int movieId) async {
    try {
      final response = await _dio.get(
        '$baseUrl/movie/$movieId',
        queryParameters: {
          'api_key': apiKey,
          'append_to_response': 'credits,similar',
        },
      );
      
      return response.data;
    } catch (e) {
      throw Exception('Failed to load movie details');
    }
  }

  // Add method to get movie cast
  Future<List<dynamic>> getMovieCast(int movieId) async {
    try {
      final response = await _dio.get(
        '$baseUrl/movie/$movieId/credits',
        queryParameters: {'api_key': apiKey},
      );
      
      return response.data['cast'] as List;
    } catch (e) {
      throw Exception('Failed to load movie cast');
    }
  }
}