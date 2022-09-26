import 'package:flutter/material.dart';

class SearchIcon extends StatefulWidget {
  final Function zoomCallback;
  final bool isSelected;

  const SearchIcon(
      {Key key, @required this.zoomCallback, @required this.isSelected})
      : super(key: key);

  @override
  State<SearchIcon> createState() => _SearchIcon();
}

class _SearchIcon extends State<SearchIcon> {
  String path = 'assets/myImages/';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        // key: Key('Zoom in Button'),
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              // key: Key('Zoom in Button'),
              //color: Colors.deepPurpleAccent,
              padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
              child: ToggleButtons(
                children: <Widget>[Icon(Icons.search)],
                key: Key('Zoom in Button'),
                isSelected: [widget.isSelected],
                onPressed: (int _) => widget.zoomCallback(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
