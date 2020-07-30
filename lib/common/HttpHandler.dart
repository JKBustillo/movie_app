import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:movie_app/common/Secret.dart';

class HttpHandler {
  final String _baseUrl = 'api.themoviedb.org';

  Future<dynamic> getJSON(Uri uri) async {
    http.Response response = await http.get(uri);
    return json.decode(response.body).toString();
  }

  Future<String> fetchMovies() {
    var uri = new Uri.https(_baseUrl, '/3/movie/popular', {
      'api_key': API_KEY,
      'page': "1",
    });

    return getJSON(uri).then((((data) => data.toString())));
  }
}
