import 'package:flutter/material.dart';
import 'package:movieapp/networking/homefetch.dart';
import 'package:movieapp/model/homecard.dart';
import 'package:movieapp/screens/homepage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

List<HomeCard> results;
int len;

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    receive();
    super.initState();
  }

  void receive() async {
    try {
      results = await fetchhome(1, 5);
      setState(() {
        len = results.length;
      });
      if (len != null) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: ((context) => Homepage(results)),
          ),
        );
      }
      print(len);
    } catch (err) {
      print(err);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Aniya Nill...\NNinagl ippo angott povanda",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.amber, fontSize: 30),
        ),
      ),
    );
  }
}
