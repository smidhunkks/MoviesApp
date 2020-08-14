import 'package:flutter/material.dart';
import 'widgets/bottomNav.dart';
import 'screens/homepage.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: SafeArea(
        child: Scaffold(
          //bottomNavigationBar: BottomNav(),
          body: Homepage(),
        ),
      ),
    );
  }
}
