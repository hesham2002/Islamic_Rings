import 'package:flutter/material.dart';
import 'package:islamic_application/home_page.dart';
import 'package:islamic_application/splash_screen.dart';
import 'package:islamic_application/test.dart';




void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
