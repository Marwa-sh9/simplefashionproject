import 'package:flutter/material.dart';

Widget defaultTextField (
{
  @required TextEditingController? controller,
   Function(String)? onsubmit,
  @required TextInputType? type,
  @required String? lable,
  @required IconData? prefixIc,
  bool ispassword=false,
  IconData? suffixIc,

}
)
=>TextFormField(
controller: controller,
onFieldSubmitted:onsubmit,
keyboardType: type,
obscureText: ispassword,
decoration: InputDecoration(
labelText: lable,
prefixIcon: Icon(
  prefixIc,
),
  suffixIcon:suffixIc!= null ? Icon(
    suffixIc,
  ):null,
//  border: BorderRadius.circular(),
),
);

Widget defaultButton(
{
  @required double width:double.infinity,
  @required Color color:Colors.brown,
  Function()? onpress,
  @required String text:'',
  bool isUppercase :true,
}
)
=>Container(
width: double.infinity,
color:Colors.brown,
child: MaterialButton(
onPressed:onpress,
height: 60.0,
child:Text( isUppercase ? text.toUpperCase():text ,
style: TextStyle(
color:Colors.white,
fontSize: 20.0,
fontWeight: FontWeight.w500,
),
),
),
);