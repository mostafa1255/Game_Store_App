import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trainui/Selected_Game.dart';
import 'package:trainui/pages/Home_page.dart';

void main() {
  runApp(Screens());
}

class Screens extends StatelessWidget {
  Screens({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return Select();
      },
      child: MaterialApp(
        theme: ThemeData(brightness: Brightness.dark),
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
