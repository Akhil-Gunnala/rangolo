import 'package:flutter/material.dart';

class ContainerTitle extends StatelessWidget {
  ContainerTitle(
      {required this.text,
      required this.onpressed,
      required this.image,
      required this.colour1,
      required this.colour2});

  final String text;
  final Color colour1;
  final Color colour2;
  final Image image;
  final Widget onpressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: colour2,
      /* decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [colour1, colour2],
        ),
      ), */
      child: TextButton(
        child: Column(
          children: [
            image,
            Text(
              text,
              style: TextStyle(
                // fontSize: 18,
                fontWeight: FontWeight.bold,
                color: colour1,
              ),
            ),
          ],
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => onpressed));
        },
      ),
    );
  }

  /*  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [colour1, colour2],
        ),
      ),
      height: 70,
      width: 500,
      child: Center(
        child: TextButton(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          onPressed: () {
            if (text == 'God/Goddess Rangoli') {
              Navigator.pushNamed(context, onpress);
            } else {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => onpressed));
            }
          },
        ),
      ),
    );
  } */
}

class ContainerTitle1 extends StatelessWidget {
  ContainerTitle1(
      {required this.text,
      required this.onpress,
      required this.image,
      required this.colour1,
      required this.colour2});

  final String text;
  final Color colour1;
  final Color colour2;
  final Image image;
  final String onpress;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: colour2,
      /* decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [colour1, colour2],
        ),
      ), */
      child: TextButton(
        child: Column(
          children: [
            image,
            Text(
              text,
              style: TextStyle(
                // fontSize: 18,
                fontWeight: FontWeight.bold,
                color: colour1,
              ),
            ),
          ],
        ),
        onPressed: () {
          Navigator.pushNamed(context, onpress);
        },
      ),
    );
  }
}
