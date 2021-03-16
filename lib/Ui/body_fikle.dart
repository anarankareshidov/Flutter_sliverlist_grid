import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BodyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          "Image ve button turleri",
          style: TextStyle(fontSize: 24),
          textAlign: TextAlign.end,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(30),
              margin: EdgeInsets.all(2),
              color: Colors.blueGrey,
              child: Text("E"),
            ),
            Container(
              padding: EdgeInsets.all(30),
              color: Colors.blueGrey,
              child: Text("E"),
            ),
            Container(
              padding: EdgeInsets.all(30),
              color: Colors.black54,
              child: Text("E"),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(30),
              margin: EdgeInsets.all(2),
              color: Colors.blueGrey,
              child: Text(
                "E",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              padding: EdgeInsets.all(30),
              color: Colors.blueGrey,
              child: Text(
                "E",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Image.asset("assets/images/workplace.jpg")
          ],
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              FlatButton(
                  onPressed: () {},
                  child: Text(
                    "ELs",
                    style: TextStyle(fontSize: 23),
                  )),
              RaisedButton(
                child: Text("Elmen"),
                onPressed: () => debugPrint("Bittiom"),
                color: Colors.teal,
              ),
              IconButton(
                icon: Icon(
                  Icons.add_circle_outline,
                  size: 32,
                ),
                onPressed: () {},
              )
            ],
          ),
        )
      ],
    );
  }
}
