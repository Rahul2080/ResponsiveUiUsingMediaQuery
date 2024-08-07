import 'package:flutter/material.dart';

class DesktopOrMobile extends StatefulWidget {
  const DesktopOrMobile({super.key});

  @override
  State<DesktopOrMobile> createState() => _DesktopOrMobileState();
}

class _DesktopOrMobileState extends State<DesktopOrMobile> {
  bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600;

  bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

          centerTitle: true,
          title: Text(isDesktop(context) == true ? "isDesktop" : "isMobile"),
        backgroundColor:isDesktop(context) == true ?  Colors.red : Colors.blue,
      ),

      body: Row(
        children: [
          isDesktop(context) == true ?
            Expanded(
              child: Container(
                color: Colors.red,
                child: Center(
                  child: Text("Red color Desktop Container"),
                ),
              ),
            ):
          Expanded(
              child: Container(
            color: Colors.blue,
            child: Center(child: Text("Blue color Mobile Container")),
          ))
        ],
      ),
    );
  }
}
