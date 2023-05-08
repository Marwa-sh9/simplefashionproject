// import 'dart:ffi';
// import 'dart:ui' as ui;
// import 'dart:async';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
//
//
// class img1 extends StatefulWidget {
//   const img1({Key? key}) : super(key: key);
//
//   @override
//   State<img1> createState() => _img1State();
// }
//
// class _img1State extends State<img1> {
//
//   @override
//   Widget build(BuildContext context) {
//      return new Scaffold(
//       appBar: new AppBar(
//         title: new Text("Image Dimensions Example"),
//       ),
//       body: Container
//         (
//         //Height:Double.infinity;
//         child: Image.network('src',frameBuilder:(BuildContext context ,Widget child,int frame ,bool isasy ){
//           return Padding(padding:const EdgeInsets.all(20,0))
//         },)
//
//       ),
//     );
//   }
// }
// Positioned(
// //left: x1,
// top: y,
// child: GestureDetector(
// onPanUpdate: (d) {
// //x = d.localPosition.dx;
// //y = d.localPosition.dy;
// //x1 += d.delta.dx;
// y += d.delta.dy;
// if(y<00)
// {
// y=0;
// }
// if(y>100)
// {
// y=100;
// }
// setState((){});
// },
// onPanEnd: (d) {
// //d.localPosition.dx;
// },
// child:
// Container(
// padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 40.0),
// color: Colors.black,
// width: 400,
// height: 10,
// ),
// ),
// ),
//  Container(
//           width: double.infinity,
//           height: 50.0,
//           child: RaisedButton(
//             // onPressed: validate,
//             child: Text(
//               "Login",
//               style: TextStyle(color: Colors.white),
//             ),
//             color: Theme.of(context).primaryColor,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(50.0),
//             ),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => MyProfile()),
//               );
//             },
//           ),
//         ),

