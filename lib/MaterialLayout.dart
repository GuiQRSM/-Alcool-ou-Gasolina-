import 'package:flutter/material.dart';

class MaterialLayout extends StatefulWidget {
  const MaterialLayout({Key? key}) : super(key: key);

  @override
  _MaterialLayoutState createState() => _MaterialLayoutState();
}

class _MaterialLayoutState extends State<MaterialLayout> {
  
  var primeColor = Color.fromARGB(255, 168, 26, 29);
  
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
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(30),
          child: Image.asset(
            "logo/newlogocar.png"
           ),
          ),
          Text(
              "Saiba qual a melhor opção para abastecimento do seu carro",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: primeColor,
          ),),
          TextField(
            decoration: InputDecoration(
              labelText: "Preço do Álcool, ex: 1.39",
              labelStyle: TextStyle(
                fontSize: 18,
                color: primeColor,
              ),
              contentPadding: EdgeInsets.fromLTRB(30, 16, 30, 16),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "Preço da Gasolina, ex: 1.39",
              labelStyle: TextStyle(
                fontSize: 18,
                color: primeColor,
              ),
              contentPadding: EdgeInsets.fromLTRB(30, 16, 30, 16),
              focusColor: primeColor,
            ),
          ),
          RaisedButton(
            onPressed: (){},
          color: primeColor,
          child: Text(
            "Calcular",
          style: TextStyle(
            color: Colors.white,
          ),),
          padding: EdgeInsets.only(right: 26, left: 26),
          ),
        ],
      ),
    );
  }
}
