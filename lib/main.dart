import 'package:flutter/material.dart';
import 'package:rangoli/containerTitiles.dart';
import 'package:rangoli/god.dart';
import 'package:rangoli/imageTitle.dart';
import 'package:rangoli/lists.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MainScreen.id,
      routes: {
        MainScreen.id: (context) => MainScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        GodScreen.id: (context) => GodScreen(),
      },
    );
  }
}

class MainScreen extends StatelessWidget {
  static const String id = 'MainScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(200)),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset('images/mainScreen.png'),
                // color: Colors.green[500],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Text(
                  "Rangoli Designs",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 45.0,
                    color: Colors.pink,
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.all(1.0),
                  margin: EdgeInsets.fromLTRB(50, 50, 50, 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.greenAccent,
                  ),
                  child: TextButton(
                      child: Text("Go",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                      onPressed: () =>
                          Navigator.pushNamed(context, HomeScreen.id)))
            ],
          ),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  static const String id = 'HomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      /* appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          'Rangoli Designs',
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              decorationColor: Colors.grey,
              color: Colors.white),
        ),
        centerTitle: true,
      ), */
      body: SafeArea(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(10),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            ContainerTitle(
              text: 'Free Hands Rangoli',
              image: Image.asset('images/free20.jpg'),
              colour1: Colors.white,
              colour2: Colors.greenAccent,
              onpressed: ImageTitle(
                title: 'Free Hands Rangoli',
                list: free,
                colour1: Colors.greenAccent,
                colour2: Colors.blueAccent,
              ),
            ),
            ContainerTitle(
              text: 'Diwali Rangoli',
              image: Image.asset('images/diwali30.jpg'),
              onpressed: ImageTitle(
                title: 'Diwali Special Rangoli',
                list: diwali,
                colour1: Colors.greenAccent,
                colour2: Colors.white,
              ),
              colour1: Colors.pinkAccent,
              colour2: Colors.amberAccent,
            ),
            ContainerTitle1(
              text: "God's Rangoli",
              image: Image.asset('images/vinay1.jpg'),
              onpress: GodScreen.id,
              colour1: Colors.lightBlueAccent,
              colour2: Colors.blue,
            ),
            ContainerTitle(
              text: 'Peacock Rangoli',
              image: Image.asset('images/p19.jpg'),
              onpressed: ImageTitle(
                title: 'Peacock Rangoli',
                list: peacock,
                colour1: Colors.greenAccent,
                colour2: Colors.orangeAccent,
              ),
              colour1: Colors.blueGrey,
              colour2: Colors.lime,
            ),
            ContainerTitle(
              text: 'Simple Rangoli',
              image: Image.asset('images/diwali10.jpg'),
              onpressed: ImageTitle(
                title: 'Simple Rangoli',
                list: simple,
                colour1: Colors.greenAccent,
                colour2: Colors.brown,
              ),
              colour1: Colors.white,
              colour2: Colors.green,
            ),
            ContainerTitle(
              text: 'Flower Rangoli',
              image: Image.asset('images/f12.jpg'),
              onpressed: ImageTitle(
                title: 'Flower Petal Rangoli',
                list: flower,
                colour1: Colors.greenAccent,
                colour2: Colors.cyanAccent,
              ),
              colour1: Colors.tealAccent,
              colour2: Colors.teal,
            ),
            ContainerTitle(
              text: 'Glass Rangoli',
              image: Image.asset('images/glass24.jpg'),
              onpressed: ImageTitle(
                title: 'Glass Rangoli',
                list: glass,
                colour1: Colors.greenAccent,
                colour2: Colors.transparent,
              ),
              colour1: Colors.white,
              colour2: Colors.purpleAccent,
            ),
            ContainerTitle(
              text: 'Dotted Designs',
              image: Image.asset('images/dots29.jpg'),
              colour1: Colors.white,
              colour2: Colors.deepPurpleAccent,
              onpressed: ImageTitle(
                title: 'Dotted Rangoli',
                list: dots,
                colour1: Colors.greenAccent,
                colour2: Colors.blueAccent,
              ),
            ),
            ContainerTitle(
              text: 'Kolam Rangoli',
              image: Image.asset('images/kolam4.jpg'),
              onpressed: ImageTitle(
                title: 'Rangoli Kolam Designs',
                list: kolam,
                colour1: Colors.greenAccent,
                colour2: Colors.lightBlueAccent,
              ),
              colour1: Colors.orange.shade500,
              colour2: Colors.brown.shade400,
            ),
          ],
        ),
      ),
    );
  }
}

/* 
class HomeScreen extends StatelessWidget {
  static const String id = 'HomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      /* appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          'Rangoli Designs',
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              decorationColor: Colors.grey,
              color: Colors.white),
        ),
        centerTitle: true,
      ), */
      body: SafeArea(
        child: ListView(
         
          padding: EdgeInsets.all(15),
          children: [
            ContainerTitle(
              text: 'Rangoli Designs With Dots',
              colour1: Colors.purpleAccent,
              colour2: Colors.deepPurpleAccent,
              onpressed: ImageTitle(
                title: 'Dotted Rangoli',
                list: dots,
                colour1: Colors.greenAccent,
                colour2: Colors.black87,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ContainerTitle(
              text: 'Simple Rangoli',
              onpressed: ImageTitle(
                title: 'Simple Rangoli',
                list: simple,
                colour1: Colors.greenAccent,
                colour2: Colors.black87,
              ),
              colour1: Colors.lightGreenAccent,
              colour2: Colors.greenAccent,
            ),
            SizedBox(
              height: 15,
            ),
            ContainerTitle(
              text: 'Diwali Special Rangoli',
              onpressed: ImageTitle(
                title: 'Diwali Special Rangoli',
                list: diwali,
                colour1: Colors.greenAccent,
                colour2: Colors.black87,
              ),
              colour1: Colors.pinkAccent,
              colour2: Colors.amberAccent,
            ),
            SizedBox(
              height: 15,
            ),
            ContainerTitle(
              text: 'God/Goddess Rangoli',
              onpress: GodScreen.id,
              colour1: Colors.lightBlueAccent,
              colour2: Colors.deepPurpleAccent,
            ),
            SizedBox(
              height: 15,
            ),
            ContainerTitle(
              text: 'Peacock Rangoli',
              onpressed: ImageTitle(
                title: 'Peacock Rangoli',
                list: peacock,
                colour1: Colors.greenAccent,
                colour2: Colors.black87,
              ),
              colour1: Colors.blueGrey,
              colour2: Colors.lime,
            ),
            SizedBox(
              height: 15,
            ),
            ContainerTitle(
              text: 'Rangoli Kolam Designs',
              onpressed: ImageTitle(
                title: 'Rangoli Kolam Designs',
                list: kolam,
                colour1: Colors.greenAccent,
                colour2: Colors.black87,
              ),
              colour1: Colors.orange.shade500,
              colour2: Colors.brown.shade400,
            ),
            SizedBox(
              height: 15,
            ),
            ContainerTitle(
              text: 'Flower Petal Rangoli',
              onpressed: ImageTitle(
                title: 'Flower Petal Rangoli',
                list: flower,
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
              text: 'Glass Rangoli',
              onpressed: ImageTitle(
                title: 'Glass Rangoli',
                list: glass,
                colour1: Colors.greenAccent,
                colour2: Colors.black87,
              ),
              colour1: Colors.deepPurpleAccent.shade100,
              colour2: Colors.purpleAccent,
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
 */
