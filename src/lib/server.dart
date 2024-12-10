import 'dart:convert';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_router/shelf_router.dart';
import 'package:mysql1/mysql1.dart' as mysql;

void main() async {
  // Define MySQL connection settings
  final settings = mysql.ConnectionSettings(
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: null,
    db: 'movies',
  );

  // Create the MySQL connection
  final connection = await mysql.MySqlConnection.connect(settings);

  final router = Router();

  router.get('/movies', (Request request) async {
    var results = await connection.query('select * from movies');
    var movies = [];
    for (var row in results) {
      movies.add({
        'id': row['id']?.toString(),
        'title': row['title']?.toString(),
        'picture': row['picture'].toString(),
        'rating': row['rating']?.toString(),
        'year': row['year']?.toString(),
        'director': row['director']?.toString(),
        'actors': row['actors']?.toString(),
        'genres': row['genres']?.toString(),
        'description': row['description']?.toString(),
      });
    }
    return Response.ok(
      jsonEncode(movies),
      headers: {
        'Content-Type': 'application/json',
        'Access-Control-Allow-Origin':
            '*', // These are permission for web developing
        'Access-Control-Allow-Methods': 'GET, POST, OPTIONS',
        'Access-Control-Allow-Headers': 'Content-Type',
      },
    );
  });

  router.get('/movies/<id>', (Request request, String id) async {
    var results =
        await connection.query('select * from movies where id = ?', [id]);

    if (results.isEmpty) {
      return Response.notFound('Movie not found');
    }

    var row = results.first;
    var movie = {
      'id': row['id']?.toString(),
      'title': row['title']?.toString(),
      'picture': row['picture'].toString(),
      'rating': row['rating']?.toString(),
      'year': row['year']?.toString(),
      'director': row['director']?.toString(),
      'actors': row['actors']?.toString(),
      'genres': row['genres']?.toString(),
      'description': row['description']?.toString(),
    };

    return Response.ok(jsonEncode({'data': movie, 'message': 'Movie found'}),
        headers: {
          'Content-Type': 'application/json',
          'Access-Control-Allow-Origin': '*',
          'Access-Control-Allow-Methods': 'GET, POST, OPTIONS',
          'Access-Control-Allow-Headers': 'Content-Type',
        });
  });

  final handler =
      const Pipeline().addMiddleware(logRequests()).addHandler(router);

  final server = await io.serve(handler, 'localhost', 9090);
  print('Server listening on port ${server.port}');
}
