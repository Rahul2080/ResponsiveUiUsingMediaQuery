import 'package:flutter/material.dart';

class OrientationMethod1 extends StatefulWidget {
  const OrientationMethod1({super.key});

  @override
  State<OrientationMethod1> createState() => _OrientationMethod1State();
}

class _OrientationMethod1State extends State<OrientationMethod1> {
  @override



  Widget build(BuildContext context) {
 bool portraitchange=  MediaQuery.of(context).orientation==Orientation.portrait;

    return Scaffold(
      appBar: AppBar(
        backgroundColor:portraitchange ? Colors.red :Colors.blue,
        centerTitle: true,
        title: Text("Orientation"),),
      body: portraitchange ? Container(
        color: Colors.red,
        child: Center(
          child: Text(" Red Container is Portrait"),
        ),
      )
          : Container(
        color: Colors.blue,
        child: Center(
          child: Text("Blue Container is Portrait"),
        ),
      ),

    );
  }
}
