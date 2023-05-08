import 'package:flutter/material.dart';
import 'package:simplefashionproject/Components/MyDrawer.dart';

class EngagementDress extends StatefulWidget {
  @override
  _EngagementDressState createState() => _EngagementDressState();
}

class _EngagementDressState extends State<EngagementDress> {
  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection:TextDirection.rtl, child: Scaffold(
      appBar: AppBar(
        title: Text("فساتين خطوبة"),
        centerTitle: true,
      ),
      drawer: MyDrawer(
        //email1:email1,
      ),
      body: Container(child: Text("hello"),),
    )
    );
  }
}
