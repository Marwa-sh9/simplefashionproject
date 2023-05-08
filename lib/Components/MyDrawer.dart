import 'package:flutter/material.dart';
import 'package:simplefashionproject/Pages/login/Login.dart';


class MyDrawer extends StatelessWidget{
  final String email1;
  MyDrawer({
    this.email1="",

});
  @override
  Widget build(BuildContext context)
  {
    return Drawer(
              child: ListView(
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    accountEmail: Text(
                      '$email1',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                      ),
                    ),
                    accountName: Text(
                      "Marwa",
                      style: TextStyle(fontSize: 35, color: Colors.blue[700]),
                    ),
                    //currentAccountPicture: CircleAvatar(child:Icon(Icons.person)),

                    decoration: BoxDecoration(
                        color: Colors.brown,
                        image: DecorationImage(
                            image: AssetImage(""),//Images/img1.png
                            fit: BoxFit.fill)),
                  ),
                  ListTile(
                    title: Text(
                      "الصفحة الرئيسية",
                      style:
                          TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
                    ),
                    leading: Icon(
                      Icons.home,
                      color: Colors.blue,
                      size: 25,
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed('homepage');
                    },
                  ),
                  ListTile(
                    title: Text(
                      "الأقسام",
                      style:
                          TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
                    ),
                    leading: Icon(
                      Icons.view_headline,
                      color: Colors.blue,
                      size: 25,
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed('categories');
                    },
                  ),
                  Divider(
                    color: Colors.blue,
                    height: 50,
                  ),
                  ListTile(
                    title: Text(
                      "حول التطبيق",
                      style:
                          TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
                    ),
                    leading: Icon(
                      Icons.app_settings_alt,
                      color: Colors.blue,
                      size: 25,
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text(
                      "الاعدادات",
                      style:
                          TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
                    ),
                    leading: Icon(
                      Icons.settings,
                      color: Colors.blue,
                      size: 25,
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text(
                      "تسجيل الخروج",
                      style:
                          TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
                    ),
                    leading: Icon(
                      Icons.logout,
                      color: Colors.blue,
                      size: 25,
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed('PLogin');
                    },
                  ),
                  ListTile(
                    title: Text(
                      "NBoxes",
                      style:
                      TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
                    ),
                    leading: Icon(
                      Icons.logout,
                      color: Colors.blue,
                      size: 25,
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed('NBox');
                    },
                  )
                ],
              ),
            );
  }


}