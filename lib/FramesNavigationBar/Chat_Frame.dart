import 'package:flutter/material.dart';

class ChatFrame extends StatefulWidget {
  const ChatFrame({Key? key}) : super(key: key);

  @override
  _ChatFrameState createState() => _ChatFrameState();
}

var primeColor = Color.fromARGB(255, 168, 26, 29);

class _ChatFrameState extends State<ChatFrame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          "Chat",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w700,
            color: primeColor,
          ),
        ),
      ),
    );
  }
}
