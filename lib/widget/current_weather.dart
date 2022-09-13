import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_apps/constant.dart';
Widget currentWeather({
  required VoidCallback onPressed,
  required String? temp,
  required String? location,
  required String? country,
  required String? status,
}) {
  return Container(
    width: w,
    child: Container(
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("$location, $country", style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.w300,)),
                  SizedBox(width: 5,),
                  IconButton(onPressed: onPressed, icon: Icon(CupertinoIcons.refresh, color: Colors.white, size: 30,
                      )),
                ],
              ),
              Text("${temp}°", style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.w300,)),
            ],
          ),
         SizedBox(width: 120,),
         // Expanded(child: Container()),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            width: w / 13,
            height: h / 5,
            child: RotatedBox(
              quarterTurns: -1,
              child: Center(child: Text(status!, style: TextStyle(color: Colors.orange, fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}