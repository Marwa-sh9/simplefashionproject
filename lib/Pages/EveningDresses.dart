import 'package:flutter/material.dart';

class EveningDresses extends StatefulWidget {
  @override
  _EveningDressesState createState() => _EveningDressesState();
}

class _EveningDressesState extends State<EveningDresses> {
  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection:TextDirection.rtl, child: Scaffold(
      appBar: AppBar(
        title: Text("فساتين سهرة"),
        centerTitle: true,
      ),
      body: Container(child: Text("hello"),),
    )
    );
  }
}
