import 'package:flutter/material.dart';

class Quran extends StatefulWidget {
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
          backgroundColor: Colors.orange,
        ),
        body: Container(
          child: MyGridViewQuran(),
        ));
  }
}

class MyGridViewQuran extends StatelessWidget {
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
              Navigator.pushNamed(context, 'quranL1');
            },
            child: GridCell1('Quran Reading Level 1', "images/quran.jpg")),
        GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'quranL2');
            },
            child: GridCell1('Quran Reading Level 2', "images/quran.jpg")),
        GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'quranL3');
            },
            child: GridCell1('Quran Reading Level 3', "images/quran.jpg"))
      ],
    );
  }
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
