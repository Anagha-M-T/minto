import 'package:flutter/material.dart';


class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: true,
     // backgroundColor:Colors.white,
      // appBar: AppBar(
      //   elevation: 0,
      //   brightness: Brightness.light,
      //   backgroundColor: Colors.white,
      //   leading: IconButton(onPressed: (){
      //     Navigator.pop(context);
      //   },
      //   icon: Icon(Icons.arrow_back_ios,
      //   size: 20,
      //   color: Colors.black,),),
      // ),
      body: SingleChildScrollView(child: Container(
           decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Color.fromARGB(10, 214, 145, 180),
                    Color.fromARGB(50, 236, 183, 210),
                    Color.fromARGB(110, 223, 157, 193),
                    Color.fromARGB(239, 235, 122, 188),
                  ])),
        padding: EdgeInsets.symmetric(horizontal: 40),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text('Sign up',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                Text('Create an account',style: TextStyle(fontSize: 15,color: Colors.grey),)
              ],
            ),
            Column(
              children: [
                inputFile(label:"Username"),
                inputFile(label:"Email"),
                inputFile(label:"Password",obscureText:true),
                inputFile(label:"Confirm Password",obscureText:true),

              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 3,left: 3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border(bottom: BorderSide(color: Colors.black),
                top: BorderSide(color: Colors.black),
                left: BorderSide(color: Colors.black),
                right: BorderSide(color: Colors.black),
                )
              ),
              // child: MaterialButton(
              //   minWidth: double.infinity,
              //   height: 60,
              //   onPressed: (){},
              //   color: Colors.pink,
              //   elevation: 0,
              //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
              //   ),
              //   child: Text("Sign Up",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,
              //   color: Colors.white),),
              // ),
              child:   RaisedButton(
        elevation: 5,
        onPressed: (){},
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Colors.pink,
        child: Text('Sign Up',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),),
      ),  ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?"),
                Text('Login',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),)

              ],
            )

          ],
        ),
      )),
    );
  }
}

Widget inputFile({label,obscureText=false})
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.black87),),
      SizedBox(height: 5,),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
      )
    ],
  );
}
