import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:simplefashionproject/Pages/MyDragger.dart';
import 'dart:async';
import 'dart:ui' as ui;
import 'package:flutter/services.dart';


Future<Size> _loadAssetImageSize(String asset) async{
  ByteData data = await rootBundle.load(asset);
  ui.Codec codec = await
  ui.instantiateImageCodec(data.buffer.asUint8List());
  ui.FrameInfo fi = await codec.getNextFrame();
  double W = fi.image.width.toDouble();
  double H=fi.image.height.toDouble();
  return Size(W, H);
}

class NBoxes extends StatefulWidget {
  State<StatefulWidget> createState() {
    return NBoxesState();
  }
}
class NBoxesState extends State<NBoxes> {
//  double x = 0;
  //double x1 = 0;
  double y = 0;
  double y1 = 0;
  Size? size;

  @override
  void initState() {
    load();
    super.initState();
  }

  load() async {
    size = await _loadAssetImageSize('Images/icon2.jpg');

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                child:

                Image.asset("Images/icon2.jpg",fit: BoxFit.cover,width:400,height: 200 ,),

              ),
              Dragger(
                  isVerticalDrag :false,
                  first: true,
                size: size,
              ),
              Dragger(
                isVerticalDrag :false,
                size: size,

              ),
              Dragger(
                isVerticalDrag :true,
                first: true,
                size: size,
              ),

              Dragger(
                isVerticalDrag :true,
                size: size,
              ),

             //),
            ]
        )
    );
  }
}