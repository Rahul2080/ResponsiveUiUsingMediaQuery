import 'package:flutter/material.dart';

class OrientationMethod2 extends StatefulWidget {
  const OrientationMethod2({super.key});

  @override
  State<OrientationMethod2> createState() => _OrientationMethod2State();
}

class _OrientationMethod2State extends State<OrientationMethod2> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (BuildContext context, Orientation orientation) {

        final isPotrait=orientation==Orientation.portrait;
        final ismobile=MediaQuery.of(context).size.shortestSide<600;
        return Scaffold(

body: GridView.count(crossAxisCount: isPotrait ? 2: 3,
  children: List.generate(6, (index)=>Card(color: Colors.orange,child: Center(child: Text("Item $index "),),) ) ,

),

      ); },

    );
  }
}
