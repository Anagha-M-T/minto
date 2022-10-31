import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:minto/home/home_page.dart';
import 'package:minto/home/widget/tables.dart';

import 'package:minto/login_page.dart';
import 'package:minto/splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home:Tables()
    );
  }
}

