import 'dart:async';

import 'package:flutter/material.dart';


import 'login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage())));
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white
           
                ),child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('MINTO',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    Image.network('https://img.freepik.com/premium-vector/burger-logo-icon_567288-500.jpg'),
                    CircularProgressIndicator()
                  ],
                ),
      ),
    );
  }
}
