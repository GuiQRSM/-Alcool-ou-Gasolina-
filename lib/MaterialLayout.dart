import 'package:flutter/material.dart';

class MaterialLayout extends StatefulWidget {
  const MaterialLayout({Key? key}) : super(key: key);

  @override
  _MaterialLayoutState createState() => _MaterialLayoutState();
}

class _MaterialLayoutState extends State<MaterialLayout> {
  
  var primeColor = Color.fromARGB(150, 134, 37, 39);
  
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
        padding: EdgeInsets.all(30),
        child: Column(
          children: <Widget>[
            Image.asset(
                "logo/newlogocar.png",
              height: 90,
            ),
            Padding(padding: EdgeInsets.only(top:16)),
            Text("Saiba qual é a melhor opção de abastecimento para o seu carro"),
          ],
        ),
      ),
    );
  }
}
