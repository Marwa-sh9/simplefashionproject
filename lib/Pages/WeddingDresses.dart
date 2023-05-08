import 'package:flutter/material.dart';

class WeddingDresses extends StatefulWidget {
  @override
  _WeddingDressesState createState() => _WeddingDressesState();
}

class _WeddingDressesState extends State<WeddingDresses> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            title: Text("فساتين عروس",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                )),
            backgroundColor: Colors.brown,
            centerTitle: true,
            elevation: 30,
            titleSpacing: 30,
            actions: <Widget>[
              IconButton(icon: Icon(Icons.search), onPressed: () {})
            ],
          ),
          body: ListView(
            children: <Widget>[
              //start list
              Container(
                  height: 100,
                  width: 100,
                  child: Card(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Image.asset("Images/weddingDress.jpg"),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                              alignment: Alignment.topRight,
                              height: 130,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                               // mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    " :المواصفات_", style: TextStyle(fontWeight: FontWeight.w800,color: Colors.brown),
                                    textAlign: TextAlign.center,
                                    
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Expanded(
                                        child: Text(
                                          " white ",
                                          style: TextStyle(color: Colors.brown[300],fontWeight: FontWeight.w700),
                                          
                                        ),
                                      ),
                                      Text(" 38 ",style:TextStyle(color: Colors.brown[300],fontWeight: FontWeight.w700))
                                    ],
                                  ),
                                  Container(margin:EdgeInsets.only(top:7),child:
                                  Text(" :السعر",style:TextStyle(color: Colors.brown[300],fontSize: 17,fontWeight: FontWeight.w700))
                                  ),],
                              )),
                        ),
                      ],
                    ),
                    
                  ))
              //end list
            ],
          ),
        ));
  }
}
