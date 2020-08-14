import 'package:http/http.dart';
import 'package:movieapp/model/homecard.dart';
import 'dart:convert';
import 'package:movieapp/constants/constants.dart';

Future<List<HomeCard>> fetchhome() async {
  List<HomeCard> l = [];
  for (var i = 1; i <= 3; i++) {
    Response result = await get(
        'https://api.themoviedb.org/3/discover/movie?api_key=$key&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=false&page=$i');
    //print(result.body);
    var decodedRes = jsonDecode(result.body);
    var results = decodedRes["results"];
    print(results);
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
