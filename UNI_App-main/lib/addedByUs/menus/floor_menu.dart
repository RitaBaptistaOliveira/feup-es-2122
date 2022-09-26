import 'package:flutter/material.dart';

import '../localization/data.dart';


class FloorMenu extends StatefulWidget {
  final Function onChangedCallback;

  const FloorMenu({Key key, @required this.onChangedCallback})
      : super(key: key);

  @override
  State<FloorMenu> createState() => _FloorMenuState();
}

class _FloorMenuState extends State<FloorMenu> {
  String dropdownValue;
  String path = "assets/myImages/";

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              //color: Colors.pinkAccent,
              padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
              child: DropdownButton<String>(
                key: Key('Floor menu'),
                hint: Text(
                    floorToShow,
                    style: TextStyle(color: Colors.black.withOpacity(0.8))
                ),
                value: dropdownValue,
                icon: const Icon(Icons.arrow_upward),
                iconEnabledColor: Color.fromRGBO(128, 0, 0, 1),
                //elevation: 16,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
                isExpanded: true,

                items: <String>[
                  '5',
                  '4',
                  '3',
                  '2',
                  '1',
                  '0',
                  '-1'//retirei o -1 pq nao temos nenhum exemplo que tenha piso -1 aqui
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    key: Key('currentFloor'),
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue = newValue.toString();
                    floorToShow = dropdownValue;
                    widget.onChangedCallback(dropdownValue);
                  });
                },
              ),
            ),
          ),
        ]
        )
    );
  }
}