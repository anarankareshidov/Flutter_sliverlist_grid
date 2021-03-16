import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListeDersleri extends StatelessWidget {
  List<int> listnumber = List.generate(300, (index) => index);
  List<String> listAltbasl =
      List.generate(300, (index) => "Liste elemeni alt baslik  $index");
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
        children: listnumber
            .map((oankieleman) => Column(children: <Widget>[
                  Container(
                    child: Card(
                      color: Colors.teal.shade100,
                      margin: EdgeInsets.all(10.0),
                      elevation: 10,
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Icon(Icons.expand),
                          radius: 12,
                        ),
                        title: Text("Liste eleman baslik $oankieleman"),
                        subtitle: Text(listAltbasl[oankieleman]),
                        trailing: Icon(Icons.add_circle),
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                    height: 32,
                    indent: 20,
                  ),
                ]))
            .toList());
  }
}
/*
 <Widget>[

          ],
        ),
      ],*/
