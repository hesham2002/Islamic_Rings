import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
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
