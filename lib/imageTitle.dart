import 'package:flutter/material.dart';
import 'package:rangoli/imageDisplay.dart';
//import 'package:rangoli_app/imageFile.dart';

class ImageTitle extends StatelessWidget {
  ImageTitle(
      {required this.title,
      required this.list,
      required this.colour1,
      required this.colour2});

  final String title;
  final Color colour1;
  final Color colour2;
  final List list;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          title,
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: colour1,
      ),
      body: SafeArea(
        child: ListView(
          children: List.generate((list.length), (index) {
            return Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              child: InkWell(
                child: Image.asset(
                  list.elementAt(index),
                  fit: BoxFit.cover,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ImageDisplay(
                                list: list,
                                index: index,
                              )));
                },
              ),
            );
          }),
        ),
      ),

      /*  body: SafeArea(
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate((list.length), (index) {
            return Container(
              child: Card(
                child: InkWell(
                  child: Image.asset(
                    list.elementAt(index),
                    fit: BoxFit.cover,
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ImageDisplay(
                                  list: list,
                                  index: index,
                                )));
                  },
                ),
              ),
            );
          }),
        ),
      ), */
      backgroundColor: colour2,
    );
  }
}
