import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class GridViewOrnek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 100,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.lightGreen,
                      width: 5,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(new Radius.circular(20)),
                  boxShadow: [
                    new BoxShadow(
                        color: Colors.red,
                        offset: new Offset(5.0, 10.0),
                        blurRadius: 20),
                  ],
                  color: Colors.redAccent,
                  gradient: LinearGradient(
                      colors: [Colors.redAccent, Colors.teal],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                  image: DecorationImage(
                      image: AssetImage("assets/images/workplace.jpg"),
                      fit: BoxFit.fill)),
              margin: EdgeInsets.all(20),
              child: Text(
                "Salam Flutter",
                textAlign: TextAlign.center,
              )),
          onTap: () => debugPrint("Merhaba flutter $index"),
          onDoubleTap: () =>
              debugPrint("Merhaba flutter ii defe basilan $index"),
        );
      },
    );
  }
}
/*
* GridView.count(
      crossAxisCount: 3,
      primary: true,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      scrollDirection: Axis.horizontal,
      mainAxisSpacing: 20,
      children: <Widget>[
        Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: Text(
              "Salam Flutter",
              textAlign: TextAlign.center,
            )),
        Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: Text(
              "Salam Flutter",
              textAlign: TextAlign.center,
            )),
        Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: Text(
              "Salam Flutter",
              textAlign: TextAlign.center,
            )),
        Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: Text(
              "Salam Flutter",
              textAlign: TextAlign.center,
            )),
        Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: Text(
              "Salam Flutter",
              textAlign: TextAlign.center,
            )),
        Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: Text(
              "Salam Flutter",
              textAlign: TextAlign.center,
            )),
        Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: Text(
              "Salam Flutter",
              textAlign: TextAlign.center,
            )),
        Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: Text(
              "Salam Flutter",
              textAlign: TextAlign.center,
            )),
        Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: Text(
              "Salam Flutter",
              textAlign: TextAlign.center,
            )),
        Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: Text(
              "Salam Flutter",
              textAlign: TextAlign.center,
            )),
        Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: Text(
              "Salam Flutter",
              textAlign: TextAlign.center,
            )),
        Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: Text(
              "Salam Flutter",
              textAlign: TextAlign.center,
            )),
        Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: Text(
              "Salam Flutter",
              textAlign: TextAlign.center,
            )),
        Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: Text(
              "Salam Flutter",
              textAlign: TextAlign.center,
            )),
        Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: Text(
              "Salam Flutter",
              textAlign: TextAlign.center,
            )),
        Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: Text(
              "Salam Flutter",
              textAlign: TextAlign.center,
            )),
        Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: Text(
              "Salam Flutter",
              textAlign: TextAlign.center,
            )),
        Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: Text(
              "Salam Flutter",
              textAlign: TextAlign.center,
            )),
        Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: Text(
              "Salam Flutter",
              textAlign: TextAlign.center,
            )),
      ],
    );
*
*
* */
