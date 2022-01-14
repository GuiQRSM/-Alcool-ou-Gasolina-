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
    );
  }
}
