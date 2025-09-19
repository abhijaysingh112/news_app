import 'package:flutter/material.dart';
import '../models/news_articles.dart';
import '../services/news_services.dart';
import 'package:http/http.dart'as http;
import 'dart:convert';

class NewsProvider extends ChangeNotifier {
  final NewsService _newsService = NewsService();
  List<NewsArticle> _articles = [];
  bool _isLoading = false;
  bool _isDarkMode = false;
  String? _error;

  List<NewsArticle> get articles => _articles;
  bool get isLoading => _isLoading;
  bool get isDarkMode => _isDarkMode;
  String? get error => _error;

  Future<void> fetchNews() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      _articles = await _newsService.fetchNews();
    } catch (e) {
      _articles = [];
    }

    _isLoading = false;
    notifyListeners();
  }
Future<void> searchNews(String query) async {
    if (query.isEmpty) return fetchNews(); // if empty, show headlines again

    _isLoading = true;
    _error = null;
    notifyListeners();

    final url =
        "https://newsapi.org/v2/everything?q=$query&apiKey=7f776739ee9f4a808e5d5dc4e2478820";

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final List articlesData = data["articles"];
        _articles = articlesData.map((e) => NewsArticle.fromJson(e)).toList();
      } else {
        _error = "Search failed";
      }
    } catch (e) {
      _error = e.toString();
    }
    _isLoading = false;
    notifyListeners();
    
}

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
}
