import 'package:http/http.dart';
import 'package:movieapp/model/homecard.dart';
import 'dart:convert';
import 'package:movieapp/constants/constants.dart';

List<HomeCard> l = [];
Future<List<HomeCard>> fetchhome(s, n) async {
  for (var i = s; i <= n; i++) {
    Response result = await get(
        'https://api.themoviedb.org/3/discover/movie?api_key=$key&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=false&page=$i');
    //print(result.body);
    var decodedRes = jsonDecode(result.body);
    var results = decodedRes["results"];
    // print(results);
    results.forEach((data) {
      // print(data['original_title']);
      // print(data['poster_path']);
      l.add(
        HomeCard(
          name: data['original_title'],
          poster: data['poster_path'],
          id: data['id'],
        ),
      );
    });
  }
  return l;
}
