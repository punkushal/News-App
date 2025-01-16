import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String apiKey = '10992bf79e3644138c0859aeca8eb43a';
  final String baseUrl = 'https://newsapi.org/v2';

  Future<Map<String, dynamic>> fetchTopHeadlines() async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/top-headlines?category=general&apiKey=$apiKey'),
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = jsonDecode(response.body);
        return data;
      } else {
        throw Exception('Failed to load news: ${response.statusCode}');
      }
    } catch (e) {
      throw ('Error fetching news: ${e.toString()}');
    }
  }
}
