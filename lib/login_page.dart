import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:minto/sign_up.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isRememberMe = false;
  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 1, offset: Offset(0, 2))
              ]),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                hintText: 'Email',
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }

  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Password',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 1, offset: Offset(0, 2))
              ]),
          height: 60,
          child: TextField(
            obscureText: true,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.black,
                ),
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }

  Widget buildForgotPassBtn() {
    return Container(
        alignment: Alignment.centerRight,
        child: FlatButton(
          onPressed: () => print('Forgot Password'),
          padding: EdgeInsets.only(right: 0),
          child: Text(
            'Forgot Password?',
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
        ));
  }

  Widget buildRememberCb() {
    return Container(
      height: 20,
      child: Row(children: [
        Theme(
            data: ThemeData(unselectedWidgetColor: Colors.grey),
            child: Checkbox(
              value: isRememberMe,
              checkColor: Colors.pink,
              activeColor: Colors.grey,
              onChanged: (value){
                setState(() {
                  isRememberMe=value!;
                });
              },
            )),
            Text('Remember me',style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold
            ),)
      ]),
    );
  }

  Widget buildLoginBtn(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
        onPressed: (){},
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Colors.pink,
        child: Text('LOGIN',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),),
      ),
    );
  }


//  Widget buildeSignUpBtn(){
//   return GestureDetector(
//     onTap: (){},
//     child: RichText(text: TextSpan(children: [
//       TextSpan(
//         text: 'Don\'t have an Account?',
//         style: TextStyle(
//           color: Colors.grey,
//           fontSize: 18,
//           fontWeight: FontWeight.w500
//         )
//       ),
//       TextSpan(text: 'Sign Up',
//       style: TextStyle(
//         color: Colors.grey,
//         fontSize: 18,
//         fontWeight: FontWeight.bold
//       ))
//     ])),
//   );
//  }

Widget buildeSignUpBtn(){
  return Container(
        alignment: Alignment.center,
        child: FlatButton(
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignUp()));
          },
          padding: EdgeInsets.only(right: 0),
          child: Text(
            'Don\'t have an Account?Sign Up',
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold,fontSize: 16),
          ),
        )
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
            child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
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
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 120),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sign In',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    buildEmail(),
                    SizedBox(
                      height: 20,
                    ),
                    buildPassword(),
                    buildForgotPassBtn(),
                    buildRememberCb(),
                    buildLoginBtn(),
                    buildeSignUpBtn(),
                  ],
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
