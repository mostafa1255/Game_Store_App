import 'package:flutter/material.dart';
import 'package:trainui/pages/Home_page.dart';
import 'package:trainui/data.dart';
void main() {
  runApp(const Screens());
}

class Screens extends StatelessWidget {
  const Screens({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
