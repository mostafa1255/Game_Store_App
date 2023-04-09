import 'package:flutter/material.dart';
import 'package:trainui/Widgets/Future_gameInfo.dart';
import 'package:trainui/data.dart';

class futuresgameWidget extends StatefulWidget {
  futuresgameWidget({
    super.key,
    required devicewidth,
    required devicehight,
  })  : devicewidth = devicewidth,
        devicehight = devicehight;

  var devicewidth;
  var devicehight;

  @override
  State<futuresgameWidget> createState() => _futuresgameWidgetState();
}

class _futuresgameWidgetState extends State<futuresgameWidget> {
  var selectedGame;

  @override
  void initState() {
    super.initState();
    selectedGame = 0;
    selectedGame++;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.devicewidth,
      height: widget.devicehight * 0.5,
      child: PageView(
        onPageChanged: (index) {
          setState(() {
            selectedGame = index;
            
            futuregameinfiWidget(
              selectedGame: index,
            );
          });
        },
        scrollDirection: Axis.vertical,
        children: [
          ...featuredGames.map<Widget>((_game) {
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(_game.coverImage.url),
                ),
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}
