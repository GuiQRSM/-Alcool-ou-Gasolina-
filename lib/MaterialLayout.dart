import 'package:flutter/material.dart';

class MaterialLayout extends StatefulWidget {
  const MaterialLayout({Key? key}) : super(key: key);

  @override
  _MaterialLayoutState createState() => _MaterialLayoutState();
}

class _MaterialLayoutState extends State<MaterialLayout> {
  
  var primeColor = Color.fromARGB(255, 168, 26, 29);

  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álcool ou Gasolina"),
        backgroundColor: primeColor,
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600
        ),
      ),
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
               ),
               style: TextStyle(
                 fontSize: 15,
                 color: primeColor,
               ),
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
                 focusColor: primeColor,
               ),
               style: TextStyle(
                   fontSize: 15,
                   color: primeColor
               ),
               controller: _controllerGasolina,
             ),
             Padding(
               padding: EdgeInsets.only(top: 13),
               child: RaisedButton(
                 onPressed: () {
                   print("Dado coletado Álcool: " + _controllerAlcool.text);
                   print("Dado coletado Gasolina " + _controllerGasolina.text);
                 },
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
               "Resultado",
               textAlign: TextAlign.center,
               style: TextStyle(
                 fontSize: 20,
                 fontWeight: FontWeight.w500,
                 color: primeColor,
               ),
             ),)
           ],
         ),
       ),
      ),
    );
  }
}
