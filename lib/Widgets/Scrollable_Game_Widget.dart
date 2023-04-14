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
        children: gameData!.map((game) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.01),
                child: Container(
                  height: hight * 0.8,
                  width: width * 0.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(game.coverImage.url))),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: hight * 0.04),
                child: Showtitle ?  Text(
                  game.title,
                  style: TextStyle(color: Colors.white, fontSize: hight * 0.08),
                ) : Container()
              )
            ],
          );
        }).toList(),
      ),
    );
  }
}
