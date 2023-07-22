import 'package:flutter/material.dart';
import 'package:splashscreenapp/homescreen/homescreen.dart';
import 'package:splashscreenapp/loginscreen/loginscreen.dart';
import 'package:splashscreenapp/loginscreen/signupscreen.dart';
import 'package:splashscreenapp/splashscreen1/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const splashscreen(),
      routes: {
        '/home':(context) => homescreen(),
        '/login':(context) => loginscreen(),
        '/signup':(context) => signupscreen(),
      },
    );
  }
}
