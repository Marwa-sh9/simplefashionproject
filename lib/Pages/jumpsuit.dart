import 'package:flutter/material.dart';

class JumpSuitDress extends StatefulWidget {
  @override
  _JumpSuitDressState createState() => _JumpSuitDressState();
}

class _JumpSuitDressState extends State<JumpSuitDress> {
  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection:TextDirection.rtl, child: Scaffold(
      appBar: AppBar(
        title: Text("افرولات"),
        centerTitle: true,
      ),
      body: Container(child: Text("hello"),),
    )
    );
  }
}
