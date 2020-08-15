import 'package:flutter/material.dart';
import 'widgets/bottomNav.dart';
import 'package:movieapp/screens/splashscreen.dart';

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
          body: SplashScreen(),
        ),
      ),
    );
  }
}
