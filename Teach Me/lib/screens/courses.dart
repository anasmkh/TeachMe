import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:teachme/robotic.dart';

class Courses extends StatefulWidget {
  //const ({ Key key }) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Teach Me'),
        centerTitle: true,
      ),
      body: Container(
        child: MyGridView(),
      ),
    );
  }
}

class MyGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Container(
          height: 0.11 * height,
          child: GestureDetector(
            onTap: () {
              Navigator.popAndPushNamed(context, '/home');
            },
            child: Padding(
              padding: EdgeInsets.all(9),
              child: Center(
                child: Text(
                  'Available Courses',
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 30,
                      color: Colors.blueGrey[900]),
                ),
              ),
            ),
          )),
      Container(
        height: 0.032 * height,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            'Start Learning Now with our Online Live Courses',
            style: TextStyle(color: Colors.blueGrey[600]),
          ),
        ),
      ),
      Expanded(
        child: Container(
          height: 0.4 * height,
          child: GridView.count(
            primary: true,
            physics: BouncingScrollPhysics(),
            crossAxisCount: 2,
            childAspectRatio: 1,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'robotic');
                  },
                  child: GridCell('Robotic', "images/arduino.jpg")),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'quran');
                  },
                  child: GridCell('Quraan Kareem', "images/quran.jpg")),
              // GridCell('Arabic', "images/arabic.jpg"),
              //  GestureDetector(
              //    onTap: () {
              //    Navigator.pushNamed(context, 'math');
              //},
              //     child: GridCell('Math', "images/math.jpg"))
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(25),
        child: MaterialButton(
          onPressed: () => launch('https://www.halal-gate.com'),
          child: Container(
              height: 0.03 * height,
              width: 0.4 * width,
              decoration: BoxDecoration(
                  //color: Colors.white,
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                'Visit our website',
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.center,
              )),
        ),
      ),
    ]);
  }
}

GestureDetector GridCell(name, image) {
  //@override
  // Widget build(BuildContext, context) {
  return GestureDetector(
      // onTap: () {
      // Navigator.pushNamed(context, 'robotic');
      //},
      child: Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
    elevation: 10,
    margin: EdgeInsets.only(top: 10, left: 10, right: 10),
    child: Stack(children: [
      Container(
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.fill))),
      Container(
        height: 30,
        color: Colors.grey.withOpacity(0.5),
        child: Center(
          child: Text(
            name,
            style: TextStyle(color: Colors.white),
          ),
        ),
      )
    ]),
  ));
}
