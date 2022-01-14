import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Shared extends StatefulWidget {
  const Shared({Key? key}) : super(key: key);

  @override
  _SharedState createState() => _SharedState();
}

class _SharedState extends State<Shared> {

  TextEditingController _controllerField = TextEditingController();

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
          padding: EdgeInsets.all(32),
          child: Center(
            child: Column(
              children: <Widget>[
               Padding(
                   padding: EdgeInsets.only(bottom: 60),
                 child:  Text(
                   "Test for SharedPreferences!",
                   style: TextStyle(
                       fontSize: 26,
                       fontWeight: FontWeight.w600,
                       color: Colors.deepOrange
                   ),
                 ),
               ),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "Campo de texto do teste",
                    labelStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.deepOrange
                    ),
                    hintText: "Content",
                    hintStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.amberAccent,
                        fontStyle: FontStyle.italic,
                    ),
                  ),
                  maxLength: 15,
                  maxLengthEnforced: true,
                  cursorColor: Colors.deepOrange,
                  controller: _controllerField,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
