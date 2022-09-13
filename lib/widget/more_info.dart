import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:weather_apps/constant.dart';

Widget moreInfo({
  required String wind,
  required String humidity,
  required String feelsLike,
}) {
  return ClipRRect(borderRadius: BorderRadius.circular(15),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
      child: Container(
        width: w,
        height: h / 12,
        decoration: BoxDecoration(color: Colors.white.withOpacity(0.1), borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.white, width: 1.9)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Wind", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400,)),
                Text("Humidity", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400,)),
                Text("FeelsLike", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400,)),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(wind, style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400,)),
                Text(humidity, style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400,)),
                Text(feelsLike, style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400,)),
              ],
            )
          ],
        ),
      ),
    ),
  );
}