import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class NBox extends StatefulWidget {
  State<StatefulWidget> createState() {
    return NBoxState();
  }
}

class NBoxState extends State<NBox> {
  double x = 0;
  double y = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Divider(
            color: Colors.black,
            thickness: 2,
            height: 10,

          ),
          Divider(
            color: Colors.black,
            thickness: 2,
            height: double.maxFinite,

          ),
          VerticalDivider(
            color: Colors.black,
            thickness: 2,
            width: double.infinity,

          ),
          VerticalDivider(
            color: Colors.black,
            thickness: 2,
             // x += d.delta.dx;
            //indent: 10, //Spacing at the top of divider.
            // endIndent: 10,


          ),
          Positioned(
            left: x,
            top: y,
            child: GestureDetector(
                onPanUpdate: (d) {
               //x = d.localPosition.dx;
               //y = d.localPosition.dy;
                x += d.delta.dx;
               y += d.delta.dy;
                setState((){});
              },
              onPanEnd: (d) {
                //d.localPosition.dx;
              },
              child:
              Container(

                decoration:  BoxDecoration(border: Border.all(
                  color: Colors.red,
                  width: 3.0,
                ),
                ),

                child: Padding(

                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child:
                  Image.asset("Images/icon2.jpg",fit: BoxFit.cover, width: 200,height: 150,),
                  //Icon(
                    //Icons.lightbulb_outline,
                    // color: _lightIsOn ? Colors.yellow.shade600 : Colors.black,
                    //size: 60,

                  ),
              )
              ),

            ),

          //),
        ],
      ),
    );
  }
}