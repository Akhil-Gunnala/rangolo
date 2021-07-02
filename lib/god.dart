import 'package:flutter/material.dart';
import 'package:rangoli/containerTitiles.dart';
import 'package:rangoli/imageTitle.dart';
import 'package:rangoli/lists.dart';

class GodScreen extends StatelessWidget {
  static const String id = 'GodScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          'God/Goddes Rangoli ',
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              decorationColor: Colors.grey,
              color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(10),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: [
              ContainerTitle(
                text: 'Krishna Rangoli',
                image: Image.asset('images/krishna32.jpg'),
                onpressed: ImageTitle(
                  title: 'Krishna Rangoli',
                  list: krishna,
                  colour1: Colors.greenAccent,
                  colour2: Colors.blueAccent,
                ),
                colour1: Colors.blueGrey,
                colour2: Colors.blue,
              ),
              ContainerTitle(
                text: 'Vinayaka Rangoli',
                image: Image.asset('images/vinay2.jpg'),
                onpressed: ImageTitle(
                  title: 'vinayaka Rangoli',
                  list: vinayaka,
                  colour1: Colors.greenAccent,
                  colour2: Colors.tealAccent,
                ),
                colour1: Colors.tealAccent,
                colour2: Colors.teal,
              ),
              ContainerTitle(
                text: 'Durgamatha Rangoli',
                image: Image.asset('images/durga3.jpg'),
                onpressed: ImageTitle(
                  title: 'Durga Rangoli',
                  list: durga,
                  colour1: Colors.greenAccent,
                  colour2: Colors.white,
                ),
                colour1: Colors.pinkAccent,
                colour2: Colors.amberAccent,
              ),
            ],
          ),
        ),
      ),

      /* body: Center(
        child: ListView(
          padding: EdgeInsets.only(left: 15, right: 15, top: 200, bottom: 150),
          children: [
            ContainerTitle(
              text: 'Krishna Rangoli',
              image: Image.asset('imags/krishna2.jpg'),
              onpressed: ImageTitle(
                title: 'Krishna Rangoli',
                list: krishna,
                colour1: Colors.greenAccent,
                colour2: Colors.black87,
              ),
              colour1: Colors.black,
              colour2: Colors.blue,
            ),
            SizedBox(
              height: 15,
            ),
            ContainerTitle(
              text: 'Vinayaka Rangoli',
              image: Image.asset('imags/vinay2.jpg'),
              onpressed: ImageTitle(
                title: 'vinayaka Rangoli',
                list: vinayaka,
                colour1: Colors.greenAccent,
                colour2: Colors.black87,
              ),
              colour1: Colors.tealAccent,
              colour2: Colors.teal,
            ),
            SizedBox(
              height: 15,
            ),
            ContainerTitle(
              text: 'Durgamatha Rangoli',
              image: Image.asset('imags/durga3.jpg'),
              onpressed: ImageTitle(
                title: 'Durga Rangoli',
                list: durga,
                colour1: Colors.greenAccent,
                colour2: Colors.black87,
              ),
              colour1: Colors.pinkAccent,
              colour2: Colors.amberAccent,
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ), */
    );
  }
}
