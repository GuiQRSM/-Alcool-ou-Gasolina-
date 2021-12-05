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
    );
  }
}
