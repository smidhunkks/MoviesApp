import 'package:flutter/material.dart';
import 'package:movieapp/model/homecard.dart';
import 'package:movieapp/networking/homefetch.dart';
import 'package:movieapp/networking/moviedDetailsfetch.dart';

import 'package:movieapp/screens/moviedetail.dart';
import 'package:movieapp/screens/splashscreen.dart';

class Homepage extends StatefulWidget {
  List<HomeCard> results;
  int len;
  Homepage(this.results);
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  ScrollController _mycontroller;
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * .03,
              top: MediaQuery.of(context).size.width * .08,
            ),
            child: Text(
              "Discover",
              style: TextStyle(
                color: Colors.white.withOpacity(.65),
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * .03,
          ),
          //Horizontal_Dropdown(),
          Expanded(
            child: GridView.builder(
                controller: _mycontroller,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: .5,
                    crossAxisSpacing: MediaQuery.of(context).size.width * .04),
                itemCount: results.length,
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.width * .03),
                physics: BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () async {
                      print(results[index].id);
                      await detailsFetch(results[index].id);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                MovieDetail(id: results[index].id),
                          ));
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          child: //Image.asset('images/img.jpg'),
                              Image.network(
                            'https://image.tmdb.org/t/p/w500/${results[index].poster}',
                            fit: BoxFit.fill,
                            //height: 150,
                          ),
                        ),
                        Text(
                          results[index].name,
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}

class Horizontal_Dropdown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * .03,
        ),
        DropdownButtonHideUnderline(
          child: DropdownButton(
            dropdownColor: Colors.black38,
            icon: Icon(Icons.keyboard_arrow_down),
            value: 1,
            elevation: 0,
            items: <DropdownMenuItem>[
              DropdownMenuItem(
                child: Text(
                  "Genre",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white.withOpacity(.65),
                  ),
                ),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text("hello world"),
                value: 2,
              ),
              DropdownMenuItem(
                child: Text("hello world"),
                value: 3,
              ),
            ],
            onChanged: (value) {
              print(value);
            },
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .03,
        ),
        DropdownButtonHideUnderline(
          child: DropdownButton(
            dropdownColor: Colors.black38,
            icon: Icon(Icons.keyboard_arrow_down),
            value: 1,
            elevation: 0,
            items: <DropdownMenuItem>[
              DropdownMenuItem(
                child: Text(
                  "Year",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white.withOpacity(.65),
                  ),
                ),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text("2020"),
                value: 2,
              ),
              DropdownMenuItem(
                child: Text("2019"),
                value: 3,
              ),
            ],
            onChanged: (value) {
              print(value);
            },
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .03,
        ),
        DropdownButtonHideUnderline(
          child: DropdownButton(
            dropdownColor: Colors.black38,
            icon: Icon(Icons.keyboard_arrow_down),
            value: 1,
            elevation: 0,
            items: <DropdownMenuItem>[
              DropdownMenuItem(
                child: Text(
                  "Sort By",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white.withOpacity(.65),
                  ),
                ),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text("Popularity"),
                value: 2,
              ),
              DropdownMenuItem(
                child: Text("Release date"),
                value: 3,
              ),
            ],
            onChanged: (value) {
              print(value);
            },
          ),
        ),
      ],
    );
  }
}
