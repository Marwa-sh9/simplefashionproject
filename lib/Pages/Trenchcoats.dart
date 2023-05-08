import 'package:flutter/material.dart';

class Trenchcoats extends StatefulWidget {
  @override
  _TrenchcoatsState createState() => _TrenchcoatsState();
}

class _TrenchcoatsState extends State<Trenchcoats> {
  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection:TextDirection.rtl, child: Scaffold(
      appBar: AppBar(
        title: Text("جواكيت طويلة"),
        centerTitle: true,
      ),
      body: Container(child: Text("hello"),),
    )
    );
  }
}
