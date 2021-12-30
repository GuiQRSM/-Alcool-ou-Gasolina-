import 'package:flutter/material.dart';

class MapFrame extends StatefulWidget {
  const MapFrame({Key? key}) : super(key: key);

  @override
  _MapFrameState createState() => _MapFrameState();
}

var primeColor = Color.fromARGB(255, 168, 26, 29);

class _MapFrameState extends State<MapFrame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    );
  }
}
