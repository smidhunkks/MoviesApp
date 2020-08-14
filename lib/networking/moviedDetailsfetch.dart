//"url=https://api.themoviedb.org/3/movie/{movie_id}?api_key=84747cea4e211b0384f313a9c570e9b2&language=en-US"
import 'dart:convert';
import 'package:http/http.dart';
import 'package:movieapp/constants/constants.dart';
import 'package:movieapp/model/moviedetails.dart';
import 'package:flutter/material.dart';

List<Widget> gen = [];
Moviedetails detail;
void detailsFetch(id) async {
  Response res =
      await get('https://api.themoviedb.org/3/movie/$id?api_key=$key');
  var decodedRes = jsonDecode(res.body);

  detail = Moviedetails(
    title: decodedRes['original_title'],
    genre: decodedRes["genres"],
    overview: decodedRes['overview'],
    poster: decodedRes['poster_path'],
    tagline: decodedRes['tagline'],
  );

  detail.genre.forEach(
    (elem) {
      gen.add(
        Container(
          padding: EdgeInsets.symmetric(horizontal: 13, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey.withOpacity(.4),
          ),
          child: Text(
            elem["name"],
          ),
        ),
      );
    },
  );

  print(gen);
}
