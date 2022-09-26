import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));


String imgPath = 'assets/images/total_map_feup.png';

class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, //containers fixos mesmo com o teclado
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65.0),
        child: AppBar(
          centerTitle: true,
          title: Image.asset(
            'assets/images/cabecalho_uniApp.jpeg',
            //alignment: Alignment.bottomCenter,
          ),
          backgroundColor: Colors.white,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: title(),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    //color: Colors.greenAccent,
                    height: 125,
                    child: Image.asset(
                      'assets/images/scan_icon.png',
                      scale: 4,
                    ),
                  ),
                ),
              ],
            ),

          ),

          /*Expanded(
            flex: 1,
            child: Container(
                color: Colors.redAccent,
                padding: EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 0.0),
                child: TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(),
                    labelText: 'Seleciona um local',
                    prefixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(
                        Icons.search,
                      ),
                    ),
                  ),
                )
            ),
          ),*/
          Expanded(
            flex: 1,
            child: MyStatefulWidget(),
          ),
          Expanded(
            flex: 6,
            child: Container(
              color: Colors.pinkAccent,
              //padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
              child: Image.asset(imgPath),
            ),
          ),
          Expanded(
              flex: 2,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 4,
                      child: Container(
                        //color: Colors.amber,
                      )
                    ),
                    Expanded(
                        flex: 1,
                        child: searchIcon(),
                    )
                  ]
              )
          )
        ],
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = 'Option_1';

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.pinkAccent,
      padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: const Icon(Icons.search),
        iconEnabledColor: Color.fromRGBO(128,0,0, 1),
        //elevation: 16,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
        isExpanded: true,
        underline: Container(
          height: 2,
          color: Color.fromRGBO(128,0,0, 1),
        ),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: <String>['Option_1', 'Option_2', 'Option_3', 'Option_4']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}

class title extends StatefulWidget {
  const title({Key? key}) : super(key: key);

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

class searchIcon extends StatefulWidget {
  const searchIcon({Key? key}) : super(key: key);

  @override
  State<searchIcon> createState() => _searchIcon();
}

class _searchIcon extends State<searchIcon> {

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.deepPurpleAccent,
      padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
      child: IconButton(
        onPressed: () {
          //imgPath = 'assets/images/total_map_feup.png';
        },
        icon: Icon(Icons.search,
          color: Color.fromRGBO(128,0,0, 1),
          size: 30.0,
        )
      )
    );
  }
}