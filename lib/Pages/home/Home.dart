import 'package:flutter/material.dart';
import 'package:simplefashionproject/Components/MyDrawer.dart';

class Home extends StatefulWidget {
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("أزياء",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 40,
              )),
          backgroundColor: Colors.brown,
          centerTitle: true,
          elevation: 30,
          titleSpacing: 30,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () {})
          ],
        ),
        drawer: MyDrawer(),
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "الأقسام",
                style: TextStyle(fontSize: 30, color: Colors.blue),
              ),
            ),
            //start cat
            Container(
                height: 120,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        height: 100,
                        width: 100,
                        child: ListTile(
                            title: Image.asset(
                              "Images/weddingDressIcon.jpg",
                              width: 80,
                              height: 80,
                              fit: BoxFit.fill,
                            ),
                            subtitle: Container(
                              child: Text(
                                "فساتين عروس",
                                textAlign: TextAlign.center,
                              ),
                            )),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        child: ListTile(
                            title: Image.asset(
                              "Images/dress2.png",
                              width: 80,
                              height: 80,
                              fit: BoxFit.fill,
                            ),
                            subtitle: Container(
                              child: Text(
                                "فساتين خطوبة",
                                textAlign: TextAlign.center,
                              ),
                            )),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        child: ListTile(
                            title: Image.asset(
                              "Images/icon2.jpg",
                              width: 80,
                              height: 80,
                              fit: BoxFit.fill,
                            ),
                            subtitle: Container(
                              child: Text(
                                "فساتين سهرة",
                                textAlign: TextAlign.center,
                              ),
                            )),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        child: ListTile(
                            title: Image.asset(
                              "Images/jumpsuit.png",
                              width: 80,
                              height: 80,
                              fit: BoxFit.fill,
                            ),
                            subtitle: Container(
                              child: Text(
                                "افرولات",
                                textAlign: TextAlign.center,
                              ),
                            )),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        child: ListTile(
                            title: Image.asset(
                              "Images/abaya2.jpg",
                              width: 80,
                              height: 80,
                              fit: BoxFit.fill,
                            ),
                            subtitle: Container(
                              child: Text(
                                "عبايات",
                                textAlign: TextAlign.center,
                              ),
                            )),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        child: ListTile(
                            title: Image.asset(
                              "Images/Jacket.jpg",
                              width: 80,
                              height: 80,
                              fit: BoxFit.fill,
                            ),
                            subtitle: Container(
                              child: Text(
                                "جواكيت طويلة",
                                textAlign: TextAlign.center,
                              ),
                            )),
                      ),
                    ])),
            //end cat
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "اخر الأعمال",
                style: TextStyle(fontSize: 30, color: Colors.blue),
              ),
            ),
            //start lateset product
            Container(
                height: 400,
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  children: <Widget>[
                    InkWell(child: GridTile(
                      child: Image.asset("Images/weddingDress.jpg"),
                      footer: Container(
                        height: 30,
                        color: Colors.black.withOpacity(0.5),
                        child: Text(
                          "بدلة عروس تول",
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ), onTap: (){},
                    ),
                    InkWell(child:
                    GridTile(
                      child: Image.asset("Images/Barbie.jpg"),
                      footer: Container(
                        height: 30,
                        color: Colors.black.withOpacity(0.5),
                        child: Text(
                          "فستان سهرة باربي",
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                          
                        ),
                      ),
                    ),onTap: (){},
                    ),
                    InkWell(child:
                    GridTile(
                      child: Image.asset("Images/2.jpg"),
                      footer: Container(
                        height: 30,
                        color: Colors.black.withOpacity(0.5),
                        child: Text(
                          "افرول",
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),onTap: (){},
                    ),
                     InkWell(child:
                    GridTile(
                      child: Image.asset("Images/a.jpg"),
                      footer: Container(
                        height: 30,
                        color: Colors.black.withOpacity(0.5),
                        child: Text(
                          "جاكيت صيفي",
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),onTap: (){},
                    ),
                  ],
                )
                ),

            //end lateset product
          ],
        ),
      ),
    );
  }
}
