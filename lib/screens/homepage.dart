import 'dart:ui';

import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * .03,
            top: MediaQuery.of(context).size.width * .03,
          ),
          child: Text(
            "Upcoming",
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
        Horizontal_Dropdown(),
        Expanded(
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: .65,
              ),
              itemCount: 10,
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * .03),
              physics: BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () => print(index),
                  child: Container(
                    margin:
                        EdgeInsets.all(MediaQuery.of(context).size.width * .01),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                    ),
                    // padding:
                    // EdgeInsets.all(MediaQuery.of(context).size.width * .03),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRect(
                          child: Image.asset('images/img.jpg'),
                          /*Image.network(
                          'https://image.tmdb.org/t/p/w500/vFIHbiy55smzi50RmF8LQjmpGcx.jpg',
                          fit: BoxFit.fill,
                          //height: 150,
                        ),*/
                        ),
                        Text("Kissing Booth"),
                      ],
                    ),
                  ),
                );
              }),
        )
      ],
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
