import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:trainui/data.dart';

class ScrollableGameWidget extends StatelessWidget {
  ScrollableGameWidget(
      {super.key,
      required this.hight,
      required this.width,
      required this.Showtitle,
      this.gameData});

  final double hight;
  final double width;
  final bool Showtitle;

  final List<Game>? gameData;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: hight,
      width: width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: gameData!.map((_game) {
          return Container(
            height: hight * 0.5,
            width: width * 0.3,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: NetworkImage(_game.coverImage.url))),
          );
        }).toList(),
      ),
    );
  }
}
