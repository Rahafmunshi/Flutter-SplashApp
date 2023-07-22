import 'package:flutter/material.dart';
import 'package:splashscreenapp/loginscreen/utils/drawer.dart';
class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent[100],
      ),
     drawer: drawer(),
      body: Center(
        child: Text("We made it easy \n to detect risks"),
      ),
    );
  }
}
