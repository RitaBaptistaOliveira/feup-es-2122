import 'package:flutter/material.dart';
import '../localization/data.dart';

class ShowSpot extends StatelessWidget {
  final String department;
  final Function spotsCallback;
  final String floorNum;
  final String spot;
  final bool canShow;

  const ShowSpot({Key key, @required this.department, @required this.spotsCallback,
    @required this.floorNum, @required this.spot, @required this.canShow}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double left = -100;
    double top = -100;

    if (floorNum == '-1'){
      canShow /* aqui le-mos a posição do icone */
          ? spot == 'Café'
          ? left = spotsMapCafe[department][6][0]
          : spot == 'Snacks'
          ? left = spotsMapSnacks[department][6][0]
          : spot == 'WC'
          ? left = spotsMapWC[department][6][0]
          : spot == 'MB'
          ? left = spotsMapMB[department][6][0]
          : left = -100
          :left = -100;
      canShow
          ? spot == 'Café'
          ? top = spotsMapCafe[department][6][1]
          : spot == 'Snacks'
          ? top = spotsMapSnacks[department][6][1]
          : spot == 'WC'
          ? top = spotsMapWC[department][6][1]
          : spot == 'MB'
          ? top = spotsMapMB[department][6][1]
          : top = -100
          :top = -100;
    } else {
      canShow
          ? spot == 'Café'
          ? left = spotsMapCafe[department][int.parse(floorNum)][0]
          : spot == 'Snacks'
          ? left = spotsMapSnacks[department][int.parse(floorNum)][0]
          : spot == 'WC'
          ? left = spotsMapWC[department][int.parse(floorNum)][0]
          : spot == 'MB'
          ? left = spotsMapMB[department][int.parse(floorNum)][0]
          : left = -100
          :left = -100;
      canShow
          ? spot == 'Café'
          ? top = spotsMapCafe[department][int.parse(floorNum)][1]
          : spot == 'Snacks'
          ? top = spotsMapSnacks[department][int.parse(floorNum)][1]
          : spot == 'WC'
          ? top = spotsMapWC[department][int.parse(floorNum)][1]
          : spot == 'MB'
          ? top = spotsMapMB[department][int.parse(floorNum)][1]
          : top = -100
          :top = -100;
    }



    /* aqui definimos o icon e a cor */
    if (canShow){
      if (spot == 'Café'){
        return Positioned(
          child: Icon(
            Icons.local_cafe,
            color: Colors.brown,
            size: 35.0,
          ),

          left: left,
          top: top,
        );
      } else if (spot == 'Snacks') {
        return Positioned(
          child: Icon(
            Icons.fastfood,
            color: Colors.deepOrangeAccent,
            size: 35.0,
          ),

          left: left,
          top: top,
        );
      } else if (spot == 'WC'){
        return Positioned(
          child: Icon(
            Icons.wc_rounded,
            color: Colors.lightBlue,
            size: 40.0,
          ),

          left: left,
          top: top,
        );
      } else if (spot == 'MB'){
        return Positioned(
          child: Icon(
            Icons.attach_money_outlined,
            color: Colors.deepPurpleAccent,
            size: 40.0,
          ),

          left: left,
          top: top,
        );
      } else {
        return Positioned(
          child: Icon(
            Icons.not_interested,
            color: Colors.black45,
            size: 40.0,
          ),

          left: left,
          top: top,
        );
      }
    } else {
      return Positioned(
        child: Icon(
          Icons.not_interested,
          color: Colors.black45,
          size: 40.0,
        ),

        left: -100,
        top: -100,
      );
    }
  }
}
