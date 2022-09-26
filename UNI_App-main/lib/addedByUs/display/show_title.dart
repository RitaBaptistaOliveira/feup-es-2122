import 'package:flutter/material.dart';


class title extends StatefulWidget {
  const title({Key key}) : super(key: key);

  @override
  State<title> createState() => _title();
}

class _title extends State<title> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(25.0, 0.0, 0, 0),
      //color: Colors.cyan,
      child: const Text(
        'Mapa das Instalações',
        style: TextStyle(
          fontSize: 20,
          fontFamily: 'OpenSans',
          color: Colors.black,
        ),
      ),
    );
  }
}

