import 'package:flutter/material.dart';
import '../localization/data.dart';

class DepartmentMenu extends StatefulWidget {
  final Function onChangedCallback;

  const DepartmentMenu({Key key, @required this.onChangedCallback})
      : super(key: key);

  @override
  State<DepartmentMenu> createState() => _DepartmentMenuState();
}

class _DepartmentMenuState extends State<DepartmentMenu> {
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
                key: Key('Department menu'),
                hint: Text(
                    departmentToShow,
                    style: TextStyle(color: Colors.black.withOpacity(0.8))
                ),
                value: dropdownValue,
                icon: const Icon(Icons.search),
                iconEnabledColor: Color.fromRGBO(128, 0, 0, 1),
                //elevation: 16,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
                isExpanded: true,
                underline: Container(
                  height: 2, //expessura
                  color: Color.fromRGBO(128, 0, 0, 1),
                ),

                items: <String>[
                  'Civil',
                  'Minas',
                  'Gestão Industrial',
                  'Eletrónica e de Computadores',
                  'Física',
                  'Informática',
                  'Mecânica',
                  'Metalúrgica e de Materiais',
                  'Química'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue = newValue.toString();
                    departmentToShow = dropdownValue;
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