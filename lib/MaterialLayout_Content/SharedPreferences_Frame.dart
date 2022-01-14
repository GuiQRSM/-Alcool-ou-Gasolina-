import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Shared extends StatefulWidget {
  const Shared({Key? key}) : super(key: key);

  @override
  _SharedState createState() => _SharedState();
}

class _SharedState extends State<Shared> {

  TextEditingController _controllerField = TextEditingController();
  var dinamicText;

  _save() async {

    String contentController = _controllerField.text;

    final objPrefs = await SharedPreferences.getInstance();
    await objPrefs.setString("key", contentController);

    print("Operação (Salvar): ${_controllerField.toString()}");

  }

  _rescue() async {

    final objPrefs = await SharedPreferences.getInstance();
    setState(() {
      dinamicText = objPrefs.getString("key");
    });

    print("Operação (Recuperar): ${dinamicText.toString()}");

  }

  _remove() async {

  }

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
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.deepOrangeAccent
                  ),
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
                        fontWeight: FontWeight.w200,
                        color: Colors.amberAccent,
                        fontStyle: FontStyle.italic,
                    ),
                  ),
                  maxLength: 15,
                  maxLengthEnforced: true,
                  cursorColor: Colors.deepOrange,
                  controller: _controllerField,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      RaisedButton(
                          onPressed: _save,
                        padding: EdgeInsets.all(14),
                        color: Colors.amberAccent,
                        child: Text(
                          "Salvar",
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w600,
                            color: Colors.deepOrange,
                          ),
                        ),
                      ),
                      RaisedButton(
                        onPressed: _rescue,
                        padding: EdgeInsets.all(14),
                        color: Colors.amberAccent,
                        child: Text(
                          "Recuperar",
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w600,
                            color: Colors.deepOrange,
                          ),
                        ),
                      ),
                      RaisedButton(
                        onPressed: (){},
                        padding: EdgeInsets.all(14),
                        color: Colors.amberAccent,
                        child: Text(
                          "Remover",
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w600,
                            color: Colors.deepOrange,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
