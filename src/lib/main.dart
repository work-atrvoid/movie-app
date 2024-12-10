import 'package:flutter/material.dart';
import 'api_service.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MovieGridScreen(),
    );
  }
}

class MovieGridScreen extends StatelessWidget {
  final ApiService apiService = ApiService();

  MovieGridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies", style: TextStyle(fontSize: 24)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: FutureBuilder(
        future: apiService.fetchMovies(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Failed to load movies"));
          } else if (!snapshot.hasData || (snapshot.data as List).isEmpty) {
            return Center(child: Text("No movies found"));
          }

          final movies = snapshot.data as List;

          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 3,
            ),
            itemCount: movies.length,
            itemBuilder: (context, index) {
              final movie = movies[index];
              return MovieCard(movie: movie);
            },
          );
        },
      ),
    );
  }
}

class MovieCard extends StatelessWidget {
  final dynamic movie;

  const MovieCard({required this.movie});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MovieDetailScreen(movie: movie),
          ),
        );
      },
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Image.network(
                movie['picture'], // Replace with actual image URL
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "${movie['title']?.toString() ?? 'N/A'} - ${movie['year']?.toString() ?? 'N/A'}",
                style: TextStyle(fontWeight: FontWeight.bold),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MovieDetailScreen extends StatelessWidget {
  final dynamic movie;

  const MovieDetailScreen({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie['title'] ?? 'Movie Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Movie Poster
            Center(
              child: Image.network(
                movie['picture'], // Replace with actual image URL
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),
            // Movie Name
            Text(
              movie['title'] ?? "Unknown Movie",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            // Movie Rating
            Text(
              "${movie['rating']?.toString() ?? 'N/A'}/10 - ${movie['year']?.toString() ?? 'N/A'}",
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            SizedBox(height: 8),
            // Movie Rating
            Text(
              "${movie['genres']?.toString() ?? 'N/A'}",
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            SizedBox(height: 16),
            // Add more movie details here if available
            Text(
              movie['description'],
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 8),
            // Movie Rating
            Text(
              "director: ${movie['director']?.toString() ?? 'N/A'}",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            // Movie Name
            Text(
              "actors:\n${movie['actors']?.toString() ?? 'N/A'}",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
