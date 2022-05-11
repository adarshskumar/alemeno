import 'package:alemeno_adarsh/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Alemeno Assingment By Adarsh',
      theme: ThemeData(
        fontFamily: 'Andika',
        appBarTheme: const AppBarTheme(color: Colors.transparent ,elevation: 0)
      ),
      home: Home(),
    );
  }
}
