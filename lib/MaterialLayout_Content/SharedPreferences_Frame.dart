import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Shared extends StatefulWidget {
  const Shared({Key? key}) : super(key: key);

  @override
  _SharedState createState() => _SharedState();
}

class _SharedState extends State<Shared> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text(
            "SharedPreferences",
            style: TextStyle(
              color: Colors.amberAccent,
            ),
        ),
        backgroundColor: Colors.deepOrange,
        iconTheme: IconThemeData(
          color: Colors.amberAccent,
        ),
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Center(
            child: Column(
              children: <Widget>[

              ],
            ),
          ),
        ),
      ),
    );
  }
}
