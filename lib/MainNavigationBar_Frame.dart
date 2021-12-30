import 'package:flutter/material.dart';

class MainNaviagtion extends StatefulWidget {
  const MainNaviagtion({Key? key}) : super(key: key);

  @override
  _MainNaviagtionState createState() => _MainNaviagtionState();
}

var primeColor = Color.fromARGB(255, 168, 26, 29);
var _actualIndex;

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
              Icons.analytics_rounded,
              color: Colors.white,
            ),
            onPressed: (){
              print("Ícone de conta acionado!");
            },
            iconSize: 25,
          ),
          IconButton(
            icon: Icon(
              Icons.settings_rounded,
              color: Colors.white,
            ),
            onPressed: (){
              print("Ícone de anunciamento acionado!");
            },
            iconSize: 25,
          ),
        ],
      ),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: primeColor,
          fixedColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          onTap: (index){
          setState(() {
            _actualIndex = index;
          });
          },
          currentIndex: _actualIndex,
          items: [
            BottomNavigationBarItem(
              title: Text(
                  "Menu",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.white
              ),),
              icon: Icon(
                Icons.local_gas_station_rounded,
                color: Colors.white,
              ),
            ),
            BottomNavigationBarItem(
              title: Text(
                "Mapa",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.white
                ),),
              icon: Icon(
                Icons.map_rounded,
                color: Colors.white,
              ),
            ),
            BottomNavigationBarItem(
              title: Text(
                "Chat",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.white
                ),),
              icon: Icon(
                Icons.chat_rounded,
                color: Colors.white,
              ),
            ),
          ],
      ),
    );
  }
}
