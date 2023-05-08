import 'package:flutter/material.dart';
import 'package:simplefashionproject/Components/MyDrawer.dart';

class categories extends StatefulWidget {
  @override
  _categoriesState createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            title: Text("الأقسام",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 40,
                )),
            backgroundColor: Colors.brown,
            centerTitle: true,
            elevation: 20,
            titleSpacing: 30,
            // actions: <Widget>[
            //   IconButton(icon: Icon(Icons.search), onPressed: () {})
            // ],
          ),
          drawer: MyDrawer(),
          body: GridView(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            children: <Widget>[
              //start cat 1
              
              InkWell(
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Image.asset("Images/weddingDress.jpg",fit: BoxFit.cover,),
                      ),
                      Container(child: Text("فساتين عروس",style: TextStyle(fontSize: 20,color: Colors.blue),)),
                    ],
                  ),
                ),
                onTap: (){
                  Navigator.of(context).pushNamed("weddingdresses");
                },
              ),
              
               //end cat 1 
              //start cat 2
              InkWell(
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Image.asset("Images/2.jpg",fit: BoxFit.cover,),
                      ),
                      Container(child: Text("افرولات",style: TextStyle(fontSize: 20,color: Colors.blue),)),
                    ],
                  ),
                ),
                 onTap: (){
                  Navigator.of(context).pushNamed("JumpSuitD");
                },
              ), //end cat 2
              //start cat 3
              InkWell(
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Image.asset("Images/3.jpg",fit: BoxFit.cover,),
                      ),
                      Container(child: Text("فساتين سهرة",style: TextStyle(fontSize: 20,color: Colors.blue),)),
                    ],
                  ),
                ),
                 onTap: (){
                  Navigator.of(context).pushNamed("EveningDresses");
                },
              ), //end cat 3
                  //start cat 4
              InkWell(
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Image.asset("Images/1.jpg",fit: BoxFit.cover,),
                      ),
                      Container(child: Text("عبايات مغربية",style: TextStyle(fontSize: 20,color: Colors.blue),)),
                    ],
                  ),
                ),
                 onTap: (){
                  Navigator.of(context).pushNamed("Abaya");
                },
              ),//end cat 4

                  //start cat 5
              InkWell(
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Image.asset("Images/4.jpg",fit: BoxFit.cover,),
                      ),
                      Container(child: Text("فساتين خطوبة",style: TextStyle(fontSize: 20,color: Colors.blue),)),
                    ],
                  ),
                ),
                 onTap: (){
                  Navigator.of(context).pushNamed("EngagementDress");
                },
              ), //end cat 5

                  //start cat 6
              InkWell(
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Image.asset("Images/a.jpg",fit: BoxFit.cover,),
                      ),
                      Container(child: Text("جواكيت طويلة",style: TextStyle(fontSize: 20,color: Colors.blue),)),
                    ],
                  ),
                ),
                 onTap: (){
                  Navigator.of(context).pushNamed("Trenchcoats");
                },
              ), //end cat 6
            ],
          )),
    );
  }
}
