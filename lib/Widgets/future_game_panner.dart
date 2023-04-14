import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:trainui/data.dart';

class FutureGameBanner extends StatelessWidget {
  FutureGameBanner({super.key, this.height, this.width});

  final height;
  final width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height*0.13,
      width: width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(featuredGames[3].coverImage.url),
        ),
      ),
    );
  }
}
