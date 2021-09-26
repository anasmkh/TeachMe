import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Robotic extends StatefulWidget {
  // const ({ Key? key }) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Teach Me'),
        ),
        body: Container(
          child: MyGridViewRobotic(),
        ));
  }
}

class MyGridViewRobotic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: true,
      physics: BouncingScrollPhysics(),
      crossAxisCount: 2,
      childAspectRatio: 1,
      mainAxisSpacing: 3,
      crossAxisSpacing: 3,
      children: [
        GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'arduinoL1');
            },
            child: GridCell1(
                'Getting Started with Arduino', "images/arduino.jpg")),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, 'arduinoL2');
          },
          child: GridCell1(
              'Moving to the next level with arduino', "images/arduino2.jpg"),
        ),
        GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'arduinoL3');
            },
            child:
                GridCell1('Building car robot with arduino', "images/car.jpg")),
        GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'machine');
            },
            child: GridCell1(
                'Getting Started with Linear Regression', "images/brain.jpg")),
      ],
    );
  }

  GestureDetector GridCell1(name, image) {
    return GestureDetector(
        child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      elevation: 10,
      margin: EdgeInsets.only(top: 20, left: 10, right: 10),
      child: Stack(children: [
        Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.fill))),
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
}
