import 'package:flutter/material.dart';

class MainNaviagtion extends StatefulWidget {
  const MainNaviagtion({Key? key}) : super(key: key);

  @override
  _MainNaviagtionState createState() => _MainNaviagtionState();
}

var primeColor = Color.fromARGB(255, 168, 26, 29);

class _MainNaviagtionState extends State<MainNaviagtion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "logo/newlogocar.png",
          width: 150,
          height: 120,
        ),
        backgroundColor: primeColor,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.account_circle_sharp,
              color: Colors.white,
            ),
            onPressed: (){
              print("Ícone de conta acionado!");
            },
            iconSize: 25,
          ),
          IconButton(
            icon: Icon(
              Icons.announcement,
              color: Colors.white,
            ),
            onPressed: (){
              print("Ícone de anunciamento acionado!");
            },
            iconSize: 25,
          ),
          IconButton(
            icon: Icon(
              Icons.update_rounded,
              color: Colors.white,
            ),
            onPressed: (){
              print("Ícone de atualização acionado!");
            },
            iconSize: 25,
          ),
        ],
      ),
    );
  }
}
