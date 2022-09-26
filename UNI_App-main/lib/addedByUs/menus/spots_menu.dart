import 'package:flutter/material.dart';
import '../localization/data.dart';


class SpotsMenu extends StatefulWidget {
  final Function onChangedCallback;

  const SpotsMenu({Key key, @required this.onChangedCallback})
      : super(key: key);

  @override
  State<SpotsMenu> createState() => _SpotsMenuState();
}

class _SpotsMenuState extends State<SpotsMenu> {
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
                key: Key('Spots menu'),
                hint: Text(
                    spotToShow,
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
                  'Café',
                  'Snacks',
                  'MB',
                  'WC'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue = newValue.toString();
                    widget.onChangedCallback(dropdownValue);
                    spotToShow = dropdownValue;
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