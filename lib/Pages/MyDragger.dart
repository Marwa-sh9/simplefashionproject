import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:ui' as ui;
import 'dart:async';
import 'package:flutter/services.dart';


class Dragger extends StatefulWidget {
  final bool isVerticalDrag;
  final bool first;
  final  size;

 // final bool ishorizontalDrag;

  const Dragger({Key? key,this.isVerticalDrag=false ,this.first=false , this.size}) : super(key: key);

  @override
  State<Dragger> createState() => _DraggerState();
}

class _DraggerState extends State<Dragger> {
  double value = 0;
 // int first=0;

  @override
  Widget build(BuildContext context) {
    return
      Positioned(
      left: widget.isVerticalDrag ? null : value,
      top: widget.isVerticalDrag ? value : null,
      child: GestureDetector(
        onPanUpdate: (d) {
          //x = d.localPosition.dx;
          //y = d.localPosition.dy;
          value += widget.isVerticalDrag ? d.delta.dy : d.delta.dx;
          // y += d.delta.dy;
          if(value<0)
          {
            value=0;
          }

          if (widget.isVerticalDrag) {

            if (widget.first) {
              if (value > widget.size.height / 2 - 20) {
                value = widget.size.height / 2 - 20;
              }
            }
            else {
              if (value < widget.size.height / 2 + 20) {
                value = widget.size.height / 2 + 20;
              }
            }
          }
          else {
            if (widget.first) {
              if (value > widget.size.width / 2 - 20) {
                value = widget.size.width / 2 - 20;
              }
            }
            else {
              if (value < widget.size.width / 2 + 20) {
                value = widget.size.width / 2 + 20;
              }
            }
          }

          setState((){});
        },
        onPanEnd: (d) {
          //d.localPosition.dx;
        },
        child:
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: widget.isVerticalDrag ? 20.0:2.0, vertical:widget.isVerticalDrag ? 2.0:20.0),
          color: Colors.black,
          width: widget.isVerticalDrag ? 400 : 10,
          height: widget.isVerticalDrag ? 10 : 400,
        ),
      ),
    );

  }
}

// class Draggerhorizontal extends StatefulWidget {
//  // final bool isVerticalDrag;
//   final bool ishorizontalDrag;
//
//   const Draggerhorizontal({Key? key,this.ishorizontalDrag=false }) : super(key: key);
//
//   @override
//   State<Draggerhorizontal> createState() => _DraggerhorizontalState();
// }
// class _DraggerhorizontalState extends State<Draggerhorizontal>
// {
//   double value1 = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return
//       Positioned(
//         left: widget.ishorizontalDrag ? value1 : null ,
//         top: widget.ishorizontalDrag ? null : value1,
//         child: GestureDetector(
//           onPanUpdate: (d) {
//             //x = d.localPosition.dx;
//             //y = d.localPosition.dy;
//             value1 += widget.ishorizontalDrag ? d.delta.dx : d.delta.dy;
//             // y += d.delta.dy;
//             if(value1<0)
//             {
//               value1=0;
//             }
//
//             setState((){});
//           },
//           onPanEnd: (d) {
//             //d.localPosition.dx;
//           },
//           child:
//           Container(
//             padding: EdgeInsets.symmetric(
//                 horizontal: widget.ishorizontalDrag ? 2.0 : 20.0,
//                 vertical: widget.ishorizontalDrag ? 20.0 : 2.0
//             ),
//             color: Colors.amber,
//             width:widget.ishorizontalDrag ? 10:200,
//             height:widget.ishorizontalDrag ? 200:10,
//           ),
//         ),
//       );
//
//   }
// }
