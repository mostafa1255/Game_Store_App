import 'package:flutter/material.dart';
import 'package:trainui/data.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _devicehight;
  var _devicewidth;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _devicehight = MediaQuery.of(context).size.height;
    _devicewidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          _futuresgameWidget(),
          _gridiantBoxWidget(),
          _topLayerWidget(),
        ],
      ),
    );
  }

  Widget _futuresgameWidget() {
    return SizedBox(
      width: _devicewidth,
      height: _devicehight * 0.5,
      child: PageView(
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

  Widget _gridiantBoxWidget() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: _devicehight * 0.8,
        width: _devicewidth,
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

  Widget _topLayerWidget() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [_topBarWidget()],
      ),
    );
  }

  Widget _topBarWidget() {
    return SizedBox(
      height: _devicehight * 0.13,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.menu,
            size: 25,
          ),
          Row(
            children: [
              Icon(
                Icons.search,
                size: 25,
              ),
              SizedBox(
                width: _devicewidth * 0.03,
              ),
              Icon(
                Icons.notifications,
                size: 25,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
