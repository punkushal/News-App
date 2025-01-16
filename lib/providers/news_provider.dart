import 'package:flutter/material.dart';
import 'package:news_app/models/news.dart';

import 'package:news_app/services/api_service.dart';

class NewsProvider with ChangeNotifier {
  final service = ApiService();
  String? _error;
  bool _isLoading = false;
  List<Article> _allArticles = [];

  //  getter
  bool get isLoading => _isLoading;
  String? get error => _error;
  List<Article> get allArticles => _allArticles;

  Future<void> getTopStoriesNews() async {
    try {
      _isLoading = true;
      _error = null;
      final Map<String, dynamic> data = await service.fetchTopHeadlines();
      final news = News.fromJson(data);
      _allArticles = news.articles;
      _isLoading = false;
      notifyListeners();
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  // Optional: Method to refresh the news
  Future<void> refreshNews() async {
    notifyListeners();
    await getTopStoriesNews();
  }
}
