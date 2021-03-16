import 'package:flutter/material.dart';
import 'dart:math' as matematik;

class CustomScrol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text("Sliver AppBar"),
          backgroundColor: Colors.teal,
          expandedHeight: 200,
          pinned: true,
          snap: true,
          floating: true,
        ),
        SliverList(
          delegate: SliverChildListDelegate(sabitListeElemanlari()),
        ),
        SliverGrid(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          delegate: SliverChildListDelegate(sabitListeElemanlari()),
        ),
        SliverGrid(
            delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFunksiyon,
                childCount: 20),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3)),
        SliverGrid(
            delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFunksiyon,
                childCount: 100),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 100)),
        SliverPadding(
            padding: EdgeInsets.all(10),
            sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                    _dinamikElemanUretenFunksiyon,
                    childCount: 10))),
        SliverFixedExtentList(
            delegate: SliverChildListDelegate(sabitListeElemanlari()),
            itemExtent: 100)
      ],
    );
  }

  List<Widget> sabitListeElemanlari() {
    return [
      Container(
        height: 100,
        child: Text(
          "Sabit list eleman 1",
          textAlign: TextAlign.center,
        ),
        color: Colors.blueGrey,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "Sabit list eleman 1",
          textAlign: TextAlign.center,
        ),
        color: Colors.blue,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "Sabit list eleman 1",
          textAlign: TextAlign.center,
        ),
        color: Colors.black54,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "Sabit list eleman 1",
          textAlign: TextAlign.center,
        ),
        color: Colors.green,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "Sabit list eleman 1",
          textAlign: TextAlign.center,
        ),
        color: Colors.indigo,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "Sabit list eleman 1",
          textAlign: TextAlign.center,
        ),
        color: Colors.purple,
        alignment: Alignment.center,
      ),
    ];
  }

  Widget _dinamikElemanUretenFunksiyon(BuildContext context, int index) {
    return Container(
      height: 100,
      child: Text(
        "Dinamik  list eleman $index",
        textAlign: TextAlign.center,
      ),
      color: _rastgelereng(),
      alignment: Alignment.center,
    );
  }

  Color _rastgelereng() {
    return Color.fromARGB(
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255));
  }
}
