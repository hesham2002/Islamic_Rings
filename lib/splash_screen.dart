import 'package:flutter/material.dart';

import 'home_page.dart';




class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  Future<void> _navigateToNextScreen() async {
    // Simulate some async work
    await Future.delayed(Duration(seconds: 3));

    // Check if the widget is still mounted before navigating
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // Build your widget as usual
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xff32323C),
              Color(0xff344363),
              Color(0xff0279B2),
              Color(0xff11293E),
              Color(0xff121F4D),
            ])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('رنات اسلامية',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,fontFamily: 'Pacifico')),

              Image(image: AssetImage('assets/images/mosque.webp'),height: 300,width: 250),
            ],
          ),
        ),
      ),
    );
  }
}
