import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "localhost:9090";

  Future<List<dynamic>> fetchMovies() async {
    final response = await http.get(Uri.parse('http://$baseUrl/movies'));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load movies');
    }
  }
}

void main() async {
  final ApiService apiService = ApiService();

  List<dynamic> list = await apiService.fetchMovies();

  for (var item in list) {
    print(item);
  }
}
