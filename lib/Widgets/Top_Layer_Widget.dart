import 'package:flutter/material.dart';
import 'package:trainui/Widgets/Future_gameInfo.dart';
import 'package:trainui/pages/Home_page.dart';

import 'Top_Bar.dart';

class topLayerWidget extends StatelessWidget {
  const topLayerWidget({
    super.key,
    this.deivcehight,
    this.devicewidth,
    this.SelectedGame,
  });
  final deivcehight;
  final devicewidth;
  final SelectedGame;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          topBarWidget(
            devicehight: deivcehight,
            devicewidth: devicewidth,
          ),
          futuregameinfiWidget(
            devicehight: deivcehight,
            devicewidth: devicewidth,
          ),
        ],
      ),
    );
  }
}
