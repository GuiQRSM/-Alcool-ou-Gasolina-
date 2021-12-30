import 'package:alcool_ou_gasolina/MaterialLayout_Content/Bitcoin_Frame.dart';
import 'package:alcool_ou_gasolina/FramesNavigationBar/Token_Frame.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class MaterialLayout extends StatefulWidget {
  const MaterialLayout({Key? key}) : super(key: key);

  @override
  _MaterialLayoutState createState() => _MaterialLayoutState();
}

class _MaterialLayoutState extends State<MaterialLayout> {
  
  var primeColor = Color.fromARGB(255, 168, 26, 29);

  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();
  var _textResult = "";

void _activecalc() {

var alcoolPrice = double.tryParse(_controllerAlcool.text);
var gasPrice = double.tryParse(_controllerGasolina.text);

if(alcoolPrice == null || gasPrice == null){
  setState(() {
    _textResult = "Valores inválidos! digite números acima de (0) e separados por (.)";
  });
}

var dividePrice = alcoolPrice! / gasPrice!;
if(dividePrice >= 0.7){
  setState(() {
    _textResult = "Neste caso compensa o uso da gasolina!";
  });
}else{
  setState(() {
    _textResult = "Neste caso compensa o uso do álcool!";
  });
}

_cleanFields();

}

void _cleanFields() {

  _controllerAlcool.text = "";
  _controllerGasolina.text = "";

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
       child: SingleChildScrollView(
         padding: EdgeInsets.all(32),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: <Widget>[
             Padding(
               padding: EdgeInsets.only(bottom: 32),
               child: Image.asset(
                   "logo/newlogocar.png"
               ),
             ),
             Padding(
               padding: EdgeInsets.only(bottom: 10),
               child: Text(
                 "Saiba qual a melhor opção para abastecimento do seu carro",
                 textAlign: TextAlign.center,
                 style: TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.w500,
                   color: primeColor,
                 ),),
             ),
             TextField(
               keyboardType: TextInputType.number,
               decoration: InputDecoration(
                 labelText: "Preço do Álcool, ex: 1.39",
                 labelStyle: TextStyle(
                   fontSize: 18,
                   color: primeColor,
                 ),
                 contentPadding: EdgeInsets.fromLTRB(30, 16, 30, 16),
                 focusedBorder: UnderlineInputBorder(
                   borderSide: BorderSide(color: primeColor),
                 ),
               ),
               style: TextStyle(
                 fontSize: 15,
                 color: primeColor,
               ),
               cursorColor: primeColor,
               controller: _controllerAlcool,
             ),
             TextField(
               keyboardType: TextInputType.number,
               decoration: InputDecoration(
                 labelText: "Preço da Gasolina, ex: 1.39",
                 labelStyle: TextStyle(
                   fontSize: 18,
                   color: primeColor,
                 ),
                 contentPadding: EdgeInsets.fromLTRB(30, 16, 30, 16),
                 focusedBorder: UnderlineInputBorder(
                   borderSide: BorderSide(color: primeColor),
                 )
               ),
               style: TextStyle(
                   fontSize: 15,
                   color: primeColor
               ),
               cursorColor: primeColor,
               controller: _controllerGasolina,
             ),
             Padding(
               padding: EdgeInsets.only(top: 13),
               child: RaisedButton(
                 onPressed: _activecalc,
                 color: primeColor,
                 child: Text(
                   "Calcular",
                   style: TextStyle(
                     color: Colors.white,
                   ),),
                 padding: EdgeInsets.only(right: 26, left: 26),
               ),
             ),
             Padding(padding: EdgeInsets.only(top: 20),
             child: Text(
               "$_textResult",
               textAlign: TextAlign.center,
               style: TextStyle(
                 fontSize: 20,
                 fontWeight: FontWeight.w500,
                 color: primeColor,
               ),
             ),),
             Padding(
                 padding: EdgeInsets.only(top: 5),
               child: RaisedButton(
                   onPressed: (){
                     Navigator.push(
                         context,
                         MaterialPageRoute(
                             builder: (context) => BitcoinFrame(),
                         ),
                     );
                   },
                 color: Colors.white38,
                 child: Image.asset(
                     "logo/bitcoin_edit.png",
                   height: 20,
                 ),
                 padding: EdgeInsets.only(right: 26, left: 26),
               ),
             )
           ],
         ),
       ),
      ),
    );
  }
}
