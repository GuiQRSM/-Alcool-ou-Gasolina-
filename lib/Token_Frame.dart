import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TokenFrame extends StatefulWidget {
  const TokenFrame({Key? key}) : super(key: key);

  @override
  _TokenFrameState createState() => _TokenFrameState();
}

class _TokenFrameState extends State<TokenFrame> {

  var primeColor = Color.fromARGB(255, 168, 26, 29);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Emissão de Token"),
        backgroundColor: primeColor,
        titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600
        ),
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(top:16),
                child: Text(
                    "Faça aqui a emissão do Token!",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                  color: primeColor,
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
