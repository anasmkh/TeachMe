import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class quranL2 extends StatefulWidget {
  // const ({ Key? key }) : super(key: key);

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
            title: Text('Teach Me'), backgroundColor: Colors.orange[400]),
        body: Stack(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 0.13 * height,
                color: Colors.orange[700].withOpacity(0.05),
                alignment: Alignment.topCenter,
                child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Reading Quran with Tajwed',
                      style: TextStyle(fontSize: 30),
                      textAlign: TextAlign.center,
                    )),
              ),
              Container(
                height: 0.25 * height,
                width: 0.75 * width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                        image: AssetImage('images/quran.jpg'),
                        fit: BoxFit.cover)),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'What You Will Learn',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('- Complete Online Course '),
                        Text('- Sessions: 8 Sessions')
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: MaterialButton(
                  onPressed: () => launch(
                      'https://halal-gate.com/pages/free-assessment-test'),
                  child: Container(
                      height: 0.04 * height,
                      width: 0.6 * width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.orange),
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Free Assessment Test',
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ))),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: MaterialButton(
                  onPressed: () => launch(
                      'https://us04web.zoom.us/j/3660037970?pwd=YXl1RmVLMnYyU2JJVWtBQmlVTWV6dz09'),
                  child: Container(
                      height: 0.04 * height,
                      width: 0.6 * width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.orange.withOpacity(0.8)),
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Start Session',
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ))),
                ),
              ),
            ],
          ),
        ]));
  }
}
