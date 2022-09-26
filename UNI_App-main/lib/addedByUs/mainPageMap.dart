import 'package:flutter/material.dart';
import 'package:uni/view/Pages/secondary_page_view.dart';

import 'display/show_spot.dart';
import 'display/show_title.dart';
import 'menus/spots_menu.dart';
import 'menus/floor_menu.dart';
import 'localization/qr_code.dart';
import 'menus/department_menu.dart';
import 'map_action/change_map_img.dart';
import 'map_action/zoom_icon.dart';


class MainMap extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => mainMap();
}

class mainMap extends SecondaryPageViewState {
  String department = 'none';
  bool isSearchIconSelected = false;
  String floor = '0';
  String spot = '';
  bool showSpot = false;

  setSpot(String spt) {
    setState(() {
      this.spot = spt;
    });
  }

  setFloor(String flr) {
    setState(() {
      this.floor = flr;
    });
  }

  setDepartment(String dep) {
    setState(() {
      this.department = dep;
    });
  }

  toggleMapZoom() {
    setState(() {
      this.isSearchIconSelected = !this.isSearchIconSelected;
      this.showSpot = !this.showSpot;
    });
  }

  @override
  Widget getBody(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, //containers fixos mesmo com o teclado
      body: Stack(
        children: [ Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
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
                      //height: 125,
                      margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: TextButton(
                        child: Icon(
                          Icons.qr_code_scanner,
                          size: 35,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const QRViewExample(),
                          ));
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 1,
                child: DepartmentMenu(onChangedCallback: this.setDepartment)),
            Expanded(
                flex: 7,
                child: DepartmentMap(
                  department: this.department,
                  zoom: this.isSearchIconSelected,
                  floor: this.floor,
                )),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded( //1ª coluna
                      flex: 3,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                                flex: 2,
                                child: FloorMenu(onChangedCallback: this.setFloor)
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(),
                            )
                          ]
                      )
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                  Expanded( //coluna do meio
                      flex: 3,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: SpotsMenu(onChangedCallback: this.setSpot),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(),
                            )
                          ]
                      )
                  ),
                  Expanded( //ultima coluna
                      flex: 1,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: SearchIcon(
                                zoomCallback: this.toggleMapZoom,
                                isSelected: this.isSearchIconSelected,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(),
                            )
                          ]
                      )
                  )
                ],
              ),
            ),
          ],
        ),
        ShowSpot(department: this.department, spotsCallback: this.setSpot,
            floorNum: this.floor, spot: this.spot, canShow: this.showSpot)
        ],

      )
    );
  }
}