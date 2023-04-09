import 'package:flutter/material.dart';

class gridiantBoxWidget extends StatelessWidget {
  const gridiantBoxWidget({
    super.key,
    required devicehight,
    required devicewidth,
  })  : devicehight = devicehight,
        devicewidth = devicewidth;

  final devicehight;
  final devicewidth;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: devicehight * 0.8,
        width: devicewidth,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Color.fromRGBO(35, 45, 59, 1), Colors.transparent],
          stops: [0.65, 1.0],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        )),
      ),
    );
  }
}
