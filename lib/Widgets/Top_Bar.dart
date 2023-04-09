import 'package:flutter/material.dart';

class topBarWidget extends StatelessWidget {
  const topBarWidget({
    super.key,
    required devicehight,
    required devicewidth,
  })  : devicehight = devicehight,
        devicewidth = devicewidth;

  final devicehight;
  final devicewidth;

  @override
  Widget build(BuildContext context) {
    print(devicehight);
    print(devicehight);
    return SizedBox(
      height: devicehight * 0.13,
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
                width: devicewidth * 0.03,
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
