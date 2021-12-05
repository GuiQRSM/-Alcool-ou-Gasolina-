import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TokenFrame extends StatefulWidget {
  const TokenFrame({Key? key}) : super(key: key);

  @override
  _TokenFrameState createState() => _TokenFrameState();
}

class _TokenFrameState extends State<TokenFrame> {

  var primeColor = Color.fromARGB(255, 168, 26, 29);
  var _activeSwi = false;

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
                  padding: EdgeInsets.only(top:16, bottom: 5),
                child: Text(
                    "Faça aqui a emissão do Token!",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                  color: primeColor,
                ),),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 10),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "Insira o seu ID!",
                    labelStyle: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: primeColor,
                    ),
                  ),
                  obscureText: true,
                  maxLength: 10,
                  maxLengthEnforced: true,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: primeColor,
                    wordSpacing: 4
                  ),
                  cursorColor: primeColor,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 14),
                child: SwitchListTile(
                    value: _activeSwi,
                    title: Text(
                        "Receber o token por SMS",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: primeColor
                    ),),
                    secondary: Icon(Icons.sms,
                    color: primeColor,),
                    activeColor: primeColor,
                    onChanged: (bool? active){
                      setState(() {
                        _activeSwi = active!;
                      });
                    },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
