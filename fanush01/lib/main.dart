import 'package:flutter/material.dart';
import 'package:fanush01/login.dart';
import 'package:fanush01/signup.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            
            children:<Widget>[
              Column(
                children:<Widget>[
                  Text(
                    "Fanush",
                      style:TextStyle(
                      color:Color(0xffF78E26),
                      fontWeight: FontWeight.bold,
                      fontSize:30,
                    ),
                  ),
                  SizedBox(
                    height:20,
                  ),
                  Text("Welcome to the Streaming Platform-Fanush",
                  textAlign:TextAlign.center,
                  style: TextStyle(
                    color:Colors.orange[300],
                    fontSize:15,
                  ),)
                ],
              ),
              Container(
                height:MediaQuery.of(context).size.height/2,
                decoration:BoxDecoration(
                  image: DecorationImage(
                    image:AssetImage("assets/images/logo.png")
                  )
                ),
              ),
              Column(
                children: <Widget>[
                  // the login button
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black
                      ),
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child:Text(
                      "Login",
                      style:TextStyle(
                        color:Colors.orange[700],
                        fontWeight: FontWeight.w600,
                        fontSize:18
                      ),
                    ),
                  ),
                //SignUpButton Starts
                  SizedBox(height: 20),
                  MaterialButton(
                    minWidth:double.infinity,
                    height:60,
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                    },
                    color:Color(0xffF78E26),
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                      ),
                      child:Text(
                      "Sign Up",
                      style:TextStyle(
                        color:Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize:18
                      ),
                    ),
                  )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}