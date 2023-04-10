import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trainui/Selected_Game.dart';
import 'package:trainui/data.dart';

class futuregameinfiWidget extends StatelessWidget {
  futuregameinfiWidget({
    super.key,
    required devicehight,
    required devicewidth,
  })  : devicehight = devicehight,
        devicewidth = devicewidth;

  final devicehight;
  final devicewidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: devicehight * 0.12,
        width: devicewidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              featuredGames[
                      Provider.of<Select>(context, listen: true).selectedGame]
                  .title,
              style: TextStyle(
                color: Colors.white,
                fontSize: devicehight * 0.04,
              ),
            ),
            SizedBox(
              height: devicehight * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                ...featuredGames.map<Widget>((_game) {
                  bool isActive = _game.title ==
                      featuredGames[Provider.of<Select>(context, listen: true)
                              .selectedGame]
                          .title;

                  double circleRaduis = devicehight * 0.004;
                  return Container(
                    margin: EdgeInsets.only(right: devicewidth * 0.015),
                    height: circleRaduis * 2,
                    width: circleRaduis * 2,
                    decoration: BoxDecoration(
                        color: isActive ? Colors.green : Colors.grey,
                        borderRadius: BorderRadius.circular(100)),
                  );
                }).toList()
              ],
            )
          ],
        ));
  }
}
