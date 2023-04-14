import 'package:flutter/material.dart';
import 'package:trainui/Widgets/Future_gameInfo.dart';
import 'package:trainui/Widgets/Scrollable_Game_Widget.dart';
import 'package:trainui/Widgets/future_game_panner.dart';
import 'package:trainui/data.dart';
import 'package:trainui/pages/Home_page.dart';

import 'Top_Bar.dart';

class topLayerWidget extends StatelessWidget {
  const topLayerWidget({
    super.key,
    this.deivcehight,
    this.devicewidth,
  });
  final deivcehight;
  final devicewidth;

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
          SizedBox(
            height: deivcehight * 0.13,
          ),
          futuregameinfiWidget(
            devicehight: deivcehight,
            devicewidth: devicewidth,
          ),
          SizedBox(
            height: deivcehight * 0.015,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: deivcehight * 0.01),
            child: ScrollableGameWidget(
              hight: deivcehight * 0.24,
              width: deivcehight,
              Showtitle: true,
              gameData: games,
            ),
          ),
          FutureGameBanner(
            height: deivcehight ,
            width: devicewidth,
          )
        ],
      ),
    );
  }
}
