import 'package:flutter/material.dart';

class MovieDetail extends StatelessWidget {
  int id;
  MovieDetail({this.id});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Text(
          id.toString(),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
