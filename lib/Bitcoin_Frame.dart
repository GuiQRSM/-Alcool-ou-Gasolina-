import 'package:flutter/material.dart';

class BitcoinFrame extends StatefulWidget {
  const BitcoinFrame({Key? key}) : super(key: key);

  @override
  _BitcoinFrameState createState() => _BitcoinFrameState();
}

var mainColor = Color.fromRGBO(51, 255, 173, 1);
var extraColor = Color.fromRGBO(0, 119, 179, 1);

class _BitcoinFrameState extends State<BitcoinFrame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
            children: <Widget>[

            ],
          ),
        ),
      ),
    );
  }
}
