import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class BitcoinFrame extends StatefulWidget {
  const BitcoinFrame({Key? key}) : super(key: key);

  @override
  _BitcoinFrameState createState() => _BitcoinFrameState();
}

var mainColor = Color.fromRGBO(51, 255, 173, 1);
var extraColor = Color.fromRGBO(0, 119, 179, 1);
var _dinamicPrice = "";

class _BitcoinFrameState extends State<BitcoinFrame> {

  void _getPrice () async {

    http.Response response;
    var url = Uri.parse("https://blockchain.info/ticker");

    response = await http.get(url);
    Map<String, dynamic> values = json.decode(response.body);
    dynamic all = values["BRL"];
    dynamic last = all["last"];

    setState(() {
      _dinamicPrice = "R\$ ${last}";
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(top: 175, bottom: 5),
                child: Image.asset(
                    "logo/bitcoin_edit.png",
                  height: 90,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(bottom: 15),
                child: Text(
                  "$_dinamicPrice",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: extraColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(bottom: 13),
                child: RaisedButton(
                  padding: EdgeInsets.all(16),
                    onPressed: _getPrice,
                  color: extraColor,
                  child: Text(
                    "Atualizar",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: mainColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:0),
                child: RaisedButton(
                  padding: EdgeInsets.all(18),
                    onPressed: (){
                    Navigator.pop(context);
                    },
                  color: extraColor,
                  child: Text(
                    "Voltar",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: mainColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
