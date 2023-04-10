import 'package:flutter/material.dart';
import 'package:trainui/Widgets/Future_gameInfo.dart';
import 'package:trainui/Widgets/Grediant_PageWidget.dart';
import 'package:trainui/Widgets/Top_Layer_Widget.dart';
import 'package:trainui/Widgets/futuresgameWidget.dart';
import 'package:trainui/data.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var devicewidth;
  var devicehight;

  @override
  void initState() {
    super.initState();
  
  }

  @override
  Widget build(BuildContext context) {
    devicehight = MediaQuery.of(context).size.height;
    devicewidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          futuresgameWidget(devicehight: devicehight, devicewidth: devicewidth),
          gridiantBoxWidget(devicehight: devicehight, devicewidth: devicewidth),
          topLayerWidget(
            deivcehight: devicehight,
            devicewidth: devicewidth,
          ),
        ],
      ),
    );
  }
}
