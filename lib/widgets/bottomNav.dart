import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<BottomNav> {
  int _selected_Index = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: new Icon(Icons.update), title: Text("Latest")),
        BottomNavigationBarItem(
          icon: new Icon(Icons.home),
          title: new Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.home),
          title: new Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.home),
          title: new Text('Home'),
        ),
      ],
      currentIndex: _selected_Index,
      selectedItemColor: Colors.redAccent,
      onTap: (int index) {
        setState(() {
          _selected_Index = index;
        });
      },
    );
  }
}
