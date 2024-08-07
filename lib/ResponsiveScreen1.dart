import 'package:flutter/material.dart';

class Responsivescreen1 extends StatefulWidget {
  const Responsivescreen1({super.key});

  @override
  State<Responsivescreen1> createState() => _Responsivescreen1State();
}

class _Responsivescreen1State extends State<Responsivescreen1> {
  @override
  Widget build(BuildContext context) {

    double mWidth=MediaQuery.of(context).size.width;
    double mHeight=MediaQuery.of(context).size.height;
    return Scaffold(
body: Center(child: Text("$mWidth,$mHeight"),),


    );
  }
}
