import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/news_articles.dart';

class NewsService {
  static const String _apiKey = "7f776739ee9f4a808e5d5dc4e2478820";
  static const String _baseUrl =
      "https://newsapi.org/v2/top-headlines?country=us&apiKey=7f776739ee9f4a808e5d5dc4e2478820";

  Future<List<NewsArticle>> fetchNews() async {
    final response = await http.get(Uri.parse(_baseUrl));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      List articles = data['articles'];
      return articles.map((json) => NewsArticle.fromJson(json)).toList();
    } else {
      throw Exception("Failed to load news");
    }
  }
}
