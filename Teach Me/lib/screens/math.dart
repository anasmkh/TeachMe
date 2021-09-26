import 'package:flutter/material.dart';

class Math extends StatefulWidget {
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
          child: MyGridViewMAth(),
        ));
  }
}

class MyGridViewMAth extends StatelessWidget {
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
              Navigator.pushNamed(context, 'math');
            },
            child: GridCell1('Math Level 1', "images/math.jpg")),
        GridCell1('Math Level 2', "images/math.jpg"),
        GridCell1('Math Level 3', "images/math.jpg")
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
