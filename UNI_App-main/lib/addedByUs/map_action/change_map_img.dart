import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../localization/data.dart';


class DepartmentMap extends StatelessWidget {
  final String department;
  final bool zoom;
  final String floor;
  final String path = 'assets/myImages/';

  const DepartmentMap({Key key, @required this.department, @required this.zoom, @required this.floor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (department != 'none'){
      return Container(
        child: zoom
            ? Image.asset(path + itemMap[department] + '_P' + floor + '.png')
            : Image.asset(path + itemMap[department] + '.png'),
      );
    } else {
      return Container(
          child: Image.asset(path + itemMap[department] + '.png'),
      );
    }

  }
}