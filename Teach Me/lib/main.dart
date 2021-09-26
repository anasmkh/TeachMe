import 'package:flutter/material.dart';
import 'package:logandregester/screens/courses.dart';
import 'package:logandregester/screens/registration_screen.dart';
import 'package:logandregester/screens/log_in.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:logandregester/screens/reset.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:logandregester/screens/robotic.dart';
import 'package:logandregester/screens/machine.dart';
import 'package:logandregester/screens/math.dart';
import 'package:logandregester/screens/quran.dart';
import 'package:logandregester/screens/arduinoL1.dart';
import 'package:logandregester/screens/arduinoL2.dart';
import 'package:logandregester/screens/arduinoL3.dart';
import 'package:logandregester/screens/quranL1.dart';
import 'package:logandregester/screens/quranL2.dart';
import 'package:logandregester/screens/quranL3.dart';
import 'package:logandregester/screens/Verification.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Teach Me',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: MyHomePage(title: 'Teach Me'),
        routes: {
          'home': (context) => MyApp(),
          'registration_screen': (context) => RegistrationScreen(),
          'log_in': (context) => LoginScreen(),
          'courses': (context) => Courses(),
          'robotic': (context) => Robotic(),
          'math': (context) => Math(),
          'quran': (context) => Quran(),
          'arduinoL1': (context) => RoboticL1(),
          'arduinoL2': (context) => RoboticL2(),
          'arduinoL3': (context) => RoboticL3(),
          'machine': (context) => Machine(),
          "quranL1": (context) => quranL1(),
          "quranL2": (context) => quranL2(),
          "quranL3": (context) => quranL3(),
          "Verification": (context) => Verification(),
          "reset": (context) => Reset(),
        });
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                height: 0.5 * height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/logo.png'), fit: BoxFit.cover),
                )),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'log_in');
              },
              child: Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Log In',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Icon(
                          Icons.login,
                          color: Colors.white,
                        ),
                      ]),
                ),
                height: 0.06 * height,
                width: 0.84 * width,
                decoration: BoxDecoration(
                    color: Colors.blueGrey[600],
                    borderRadius: BorderRadius.circular(50)),
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'registration_screen');
              },
              child: Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Register Now',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Icon(
                          Icons.app_registration,
                          color: Colors.white,
                        ),
                      ]),
                ),
                height: 0.06 * height,
                width: 0.84 * width,
                decoration: BoxDecoration(
                    color: Colors.blueGrey.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(50)),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(25),
              child: MaterialButton(
                onPressed: () => launch('https://www.halal-gate.com'),
                child: Container(
                    height: 0.03 * height,
                    width: 0.42 * width,
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
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
