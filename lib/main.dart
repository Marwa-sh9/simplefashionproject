import 'package:flutter/material.dart';
import 'package:simplefashionproject/Components/MyDrawer.dart';
import 'package:simplefashionproject/Pages/Abaya.dart';
import 'package:simplefashionproject/Pages/EngagementDress.dart';
import 'package:simplefashionproject/Pages/EveningDresses.dart';
import 'package:simplefashionproject/Pages/home/Home.dart';
import 'package:simplefashionproject/Pages/JumpSuit.dart';
import 'package:simplefashionproject/Pages/MyProfile.dart';
import 'package:simplefashionproject/Pages/Trenchcoats.dart';
import 'package:simplefashionproject/Pages/WeddingDresses.dart';
import 'package:simplefashionproject/Pages/categories/categories.dart';
import 'package:simplefashionproject/Pages/login/Login.dart';
import 'package:simplefashionproject/Pages/registration/registration.dart';
import 'Pages/9Boxes.dart';
import 'Pages/NineBoxes.dart';
// import 'package:carousel_pro/carousel_pro.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //start
      title: "Mydresses",
      home: registration(),
      routes: {
        'categories':(context){
          return categories();
        },

        'homepage':(context){
          return Home();

        },

        'weddingdresses':(context){
          return WeddingDresses();
        },

        'JumpSuitD':(context){
          return JumpSuitDress();

        },
        'EveningDresses':(context){
          return EveningDresses();
        },

        'Abaya':(context)
        {
          return Abaya();
        },
        'EngagementDress':(context){
          return EngagementDress();
        },
        'Trenchcoats':(context){
          return Trenchcoats();
        },
        'PLogin':(context){
          return PLogin();
        },
        'MyProfile':(context){
          return MyProfile();
        },
        'registration':(context)
        {
          return registration();
        },
        'NBox':(context)
        {
          return NBox();
        },
        'NBoxes':(context)
        {
          return NBoxes();
        },
        'MyDrawer':(context)
        {
          return MyDrawer();

        }

      },
      //end
    );
  }
}
