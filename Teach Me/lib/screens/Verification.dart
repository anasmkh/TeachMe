//import 'dart:ffi';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:logandregester/screens/courses.dart';

class Verification extends StatefulWidget {
  @override
  _Verification createState() => _Verification();
}

class _Verification extends State<Verification> {
  final auth = FirebaseAuth.instance;
  User user;
  Timer timer;
  @override
  void initState() {
    super.initState();
    user = auth.currentUser;
    user.sendEmailVerification();
    timer = Timer.periodic(Duration(seconds: 2), (timer) {
      checkEmail();
    });
    @override
    void dispose() {
      timer.cancel();
      super.dispose();
    }
  }

  @override
  Widget build(BuildContext) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Email Verification"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Colors.white),
        child: Expanded(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'We have sent you a verificatin email to ${user.email},click verify and your page will be reloaded automatically',
              style: TextStyle(color: Colors.black, fontSize: 15),
              textAlign: TextAlign.center,
            ),
          ]),
        ),
      ),
    );
  }

  Future<void> checkEmail() async {
    user = auth.currentUser;
    //
    await user.reload();
    if (user.emailVerified) {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => Courses()));
      timer.cancel();
    }
  }
}
