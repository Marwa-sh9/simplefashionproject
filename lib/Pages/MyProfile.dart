import 'package:flutter/material.dart';
import 'package:simplefashionproject/Components/MyDrawer.dart';

class MyProfile extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _ProfileState();
  }
}

class _ProfileState extends State<MyProfile> {
  final String Nemail='';
  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection:TextDirection.rtl, child: Scaffold(
      appBar: AppBar(
        title: Text("MyProfile"),
        centerTitle: true,
      ),
      drawer: MyDrawer(
        email1:Nemail,
      ),
      body: Container(child: Text(" hello "),),
    )
    );
  }
}
