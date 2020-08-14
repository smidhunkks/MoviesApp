import 'package:flutter/material.dart';
import 'package:movieapp/networking/moviedDetailsfetch.dart';

class MovieDetail extends StatelessWidget {
  int id;
  MovieDetail({this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              child: Image.network(
                'https://image.tmdb.org/t/p/w500/${detail.poster}',
                fit: BoxFit.fill,
                width: double.infinity,
              ),
            ),
          ),
          Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    detail.title,
                    style: TextStyle(
                        fontSize: 38, color: Colors.white.withOpacity(.8)),
                  ),
                  Text(
                    detail.tagline,
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Overview',
                    style: TextStyle(fontSize: 29),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Text(
                      detail.overview,
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w300),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 12.0),
                    child: Text(
                      'Genres',
                      style: TextStyle(fontSize: 29),
                    ),
                  ),
                  Wrap(
                    spacing: 20,
                    children: gen,
                  )
                ],
              )
              //color: Colors.amber,
              ),
        ],
      ),
    );
  }
}
