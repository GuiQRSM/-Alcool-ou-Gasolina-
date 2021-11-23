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
      body: Container(
        decoration: BoxDecoration(border: Border.all(width: 4, color: Colors.blue),),
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Image.asset(
                "logo/newlogocar.png",
              height: 80,
            ),
            Padding(padding: EdgeInsets.only(top:10),),
            Text("Saiba qual é a melhor opção de abastecimento para o seu carro.",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black54,
            ),),
            Padding(padding: EdgeInsets.only(top:10),),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Preço do Álcool, ex: 1.39",
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: primeColor
                ),
              ),
            ),
            TextField(
             keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Preço da Gasolina, ex: 2.40",
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: primeColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
