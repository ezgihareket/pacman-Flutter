import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pacman/homepage.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          width: 400,
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(95),
                  child: Container(
                    child: Image.asset('lib/images/pacman.png'),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 50.0),
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                      (context) => false,
                    );
                  },
                  child: Text(
                    "Oyna",
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 200.0),
                child: FlatButton(
                  onPressed: () => exit(0),
                  child: Text(
                    "Çıkış",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
