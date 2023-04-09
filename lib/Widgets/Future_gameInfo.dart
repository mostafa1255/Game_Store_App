import 'package:flutter/material.dart';
import 'package:trainui/data.dart';

class futuregameinfiWidget extends StatelessWidget {
  futuregameinfiWidget({
    super.key,
    devicehight = 0,
    devicewidth = 0,
    this.selectedGame = 1,
  })  : _devicehight = devicehight,
        _devicewidth = devicewidth;

  var selectedGame;
  final _devicehight;
  final _devicewidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: _devicehight * 0.12,
        width: _devicewidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(featuredGames[selectedGame].title),
            Row(
              children: [],
            )
          ],
        ));
  }
}
