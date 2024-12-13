import 'package:flutter/material.dart';
import '../pages/detail.dart';

class MovieCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final String rating;
  final String genres;
  final String year;
  final String actors;
  final String director;

  const MovieCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.rating,
    required this.genres,
    required this.year,
    required this.actors,
    required this.director,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MovieDetailPage(
              imageUrl: imageUrl,
              title: title,
              description: description,
              rating: rating,
              genres: genres,
              year: year,
              actors: actors,
              director: director,
            ),
          ),
        );
      },
      child: Container(
        width: 150,
        margin: const EdgeInsets.only(right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                imageUrl,
                height: 200,
                width: 150,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MovieCardDiscover extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final String rating;
  final String genres;
  final String year;
  final String actors;
  final String director;

  const MovieCardDiscover({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.rating,
    required this.genres,
    required this.year,
    required this.actors,
    required this.director,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MovieDetailPage(
                imageUrl: imageUrl,
                title: title,
                description: description,
                rating: rating,
                year: year,
                genres: genres,
                actors: actors,
                director: director),
          ),
        );
      },
      child: Container(
        width: 229,
        margin: const EdgeInsets.only(right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: ShaderMask(
                  shaderCallback: (rect) {
                    return const LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xff1B1F2A), Colors.transparent],
                    ).createShader(
                        Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image.network(
                    imageUrl,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    height: 344,
                  ),
                )),
            const SizedBox(height: 8),
            Center(
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
