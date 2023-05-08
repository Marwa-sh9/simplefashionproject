import 'package:flutter/material.dart';
import 'package:simplefashionproject/Components/components.dart';
import 'package:simplefashionproject/Pages/MyProfile.dart';
//import 'package:http/http.dart' as http;

class registration extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _registrationState();
  }
}

class _registrationState extends State<registration> {

  var useremail = TextEditingController();
  var userName = TextEditingController();
  var userpassword = TextEditingController();
  var Phone =TextEditingController();

  @override
  void initState() {
    useremail.text = ""; //innitail value of text field
    userpassword.text = "";
    userName.text="";
    Phone.text="";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection:TextDirection.rtl, child: Scaffold(
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
     // drawer: MyDrawer(),
      body: Column(
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
                    Text('singin',
                      style: TextStyle(
                        // color:Colors.red,
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                    SizedBox(
                      height:20.0,

                    ),
                    //email
                    defaultTextField(
                      controller:useremail,
                      onsubmit: (value)
                      {},
                      type: TextInputType.emailAddress,
                      lable:'Your Email',
                      prefixIc: Icons.email,
                    ),
                    SizedBox(
                      height:20.0,

                    ),
                    //name
                    defaultTextField(
                      controller: userName,
                      onsubmit: (value)
                      {},
                      type: TextInputType.name,
                      lable:'Your Name',
                      prefixIc: Icons.wrap_text_sharp,
                    ),
                    SizedBox(
                      height:20.0,

                    ),
                    //password
                    defaultTextField(
                      controller: userpassword,
                      onsubmit: (value)
                      {},
                      type: TextInputType.visiblePassword,
                      lable:'Your Password',
                      prefixIc: Icons.lock,
                      ispassword: true,
                      suffixIc:Icons.remove_red_eye,
                    ),
                    SizedBox(
                      height:20.0,

                    ),
                    //password rewrite
                    defaultTextField(
                      controller: userpassword,
                      onsubmit: (value)
                      {},
                      type: TextInputType.visiblePassword,
                      lable:'password confirmation',
                      prefixIc: Icons.lock,
                      ispassword: true,
                      suffixIc:Icons.remove_red_eye,
                    ),
                    SizedBox(
                      height:20.0,

                    ),
                    //phone
                    defaultTextField(
                      controller:Phone,
                      onsubmit: (value)
                      {},
                      type: TextInputType.phone,
                      lable:'Your Phone',
                      prefixIc: Icons.phone,
                    ),
                    SizedBox(
                      height:20.0,

                    ),
                    defaultButton(
                      color: Colors.brown,
                      text: 'signin',
                      width: double.infinity,
                      onpress: (){Navigator.of(context).pushNamed("PLogin");;
                      },
                      isUppercase: false,
                    ),
                    SizedBox(
                      height:10.0,

                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('you have account?'),
                        TextButton(
                          onPressed: (){
                            Navigator.of(context).pushNamed("PLogin");
                          },
                          child: Text('login'),
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
}
