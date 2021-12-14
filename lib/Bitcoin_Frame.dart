import 'package:flutter/material.dart';

class BitcoinFrame extends StatefulWidget {
  const BitcoinFrame({Key? key}) : super(key: key);

  @override
  _BitcoinFrameState createState() => _BitcoinFrameState();
}

var mainColor = Color.fromRGBO(51, 255, 173, 1);
var extraColor = Color.fromRGBO(0, 119, 179, 1);
var _dinamicPrice = "R\$";

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
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(bottom: 13),
                child: RaisedButton(
                  padding: EdgeInsets.all(16),
                    onPressed: (){},
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
