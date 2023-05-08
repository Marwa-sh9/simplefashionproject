import 'package:flutter/material.dart';

class Abaya extends StatefulWidget {
  @override
  _AbayaState createState() => _AbayaState();
}

class _AbayaState extends State<Abaya> {
  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection:TextDirection.rtl, child: Scaffold(
      appBar: AppBar(
        title: Text("عبايات"),
        centerTitle: true,
      ),
      body: Container(child: Text("hello"),),
    )
    );
  }
}
