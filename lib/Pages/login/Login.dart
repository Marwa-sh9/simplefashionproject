import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:simplefashionproject/Components/components.dart';
import 'package:simplefashionproject/Components/MyDrawer.dart';
import 'package:simplefashionproject/Pages/MyProfile.dart';
import 'package:email_validator/email_validator.dart';
//import 'package:flutter_hooks/flutter_hooks.dart';

class PLogin extends StatefulWidget {
 State<StatefulWidget> createState() {
  return LoginState();
 }
}
class LoginState extends State<PLogin> {
  var useremail = TextEditingController();
  var userpassword = TextEditingController();

  bool isEmail(String input) => EmailValidator.validate(input);

@override
void initState() {
  useremail.text = ""; //innitail value of text field
  userpassword.text = "";
  super.initState();

}
  String? get _errorText {
    // at any time, we can get the text from _controller.value.text
    final text = useremail.value.text;
    // Note: you can do your own custom validation here
    // Move this logic this outside the widget for more testable code
    if (text.isEmpty) {
      return 'Can\'t be empty';
    }
    if (text.length < 4) {
      return 'Too short';
    }
    // return null if the text is valid
    return null;
  }
  String _errorMessage = '';

 @override
 Widget build(BuildContext context) {
  // final _key = useState(GlobalKey<FormFieldState>());
  return
  Directionality(
    textDirection: TextDirection.ltr,
    child: Scaffold(
        appBar: AppBar(
          title: Text("أزياء",
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
        //drawer: MyDrawer(),
      body:
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child:
            Center(
              child: SingleChildScrollView(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Login',
                      style: TextStyle(
                        // color:Colors.red,
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                    SizedBox(
                      height:30.0,

                    ),
                    defaultTextField(
                      controller: useremail,
                      onsubmit: (value)
                        {},
                      type: TextInputType.emailAddress,
                      lable:'Email',
                      prefixIc: Icons.email,
                    ),
                    SizedBox(
                      height:20.0,

                    ),
                    defaultTextField(
                      controller: userpassword,
                      onsubmit: (value)
                      {},
                      type: TextInputType.visiblePassword,
                      lable:'Password',
                      prefixIc: Icons.lock,
                      ispassword: true,
                      suffixIc:Icons.remove_red_eye,
                    ),
                    SizedBox(
                      height:40.0,

                    ),
                    defaultButton(
                      color: Colors.brown,
                      text: 'LogIn',
                      width: double.infinity,
                      onpress: (){Navigator.of(context).pushNamed("homepage");
                      },
                      isUppercase: false,
                    ),
                    SizedBox(
                      height:10.0,

                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Don\'t have an account?  '),
                        TextButton(
                          onPressed: (){
                            Navigator.of(context).pushNamed("registration");
                          },
                          child: Text('Register Now'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
 ),
   );
 }
  // void validateEmail(String val) {
  //    if(!EmailValidator.validate(val, true)){
  //     setState(() {
  //       _errorMessage = "Invalid Email Address";
  //     });
  //   }else{
  //     setState(() {
  //
  //       _errorMessage = "";
  //     });
  //   }
  // }
 }
