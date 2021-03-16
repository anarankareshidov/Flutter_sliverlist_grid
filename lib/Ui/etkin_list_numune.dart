import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class EtkinList extends StatelessWidget {
  List<Ogrenci> allstudents = [];
  @override
  Widget build(BuildContext context) {
    OgrenciVerileriniGetir();
    return ListView.separated(
        separatorBuilder: (context, index) {
          if (index % 4 == 0 && index != 0) {
            return Container(height: 4, color: Colors.blue);
          } else {
            return Divider();
          }
        },
        itemCount: 200,
        itemBuilder: (context, index) {
          return Card(
            color: index % 2 == 0 ? Colors.teal : Colors.lightGreen,
            elevation: 4,
            child: ListTile(
                leading: Icon(Icons.accessibility),
                title: Text(allstudents[index]._ad),
                subtitle: Text(allstudents[index]._soyad),
                trailing: Icon(Icons.add_circle),
                onTap: () {
                  toastMesajGoster(index, false);
                  alertDialogGoster(context);
                },
                onLongPress: () {
                  toastMesajGoster(index, true);
                }),
          );
        });
  }

  void OgrenciVerileriniGetir() {
    allstudents = List.generate(
        300,
        (index) => Ogrenci("Ogrenci $index Ad", "Ogrenci $index soyad ",
            index % 2 == 0 ? true : false));
  }

  void alertDialogGoster(BuildContext ctx) {
    showDialog(
        context: ctx,
        barrierDismissible: false,
        builder: (ctx) {
          return AlertDialog(
            title: Text("Alert"),
            content: SingleChildScrollView(
                child: ListBody(
              children: <Widget>[
                Text("Text"),
              ],
            )),
            actions: <Widget>[
              ButtonTheme.bar(
                child: ButtonBar(children: <Widget>[
                  FlatButton(
                    onPressed: () {},
                    child: Text("Tamam"),
                    color: Colors.teal,
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.of(ctx).pop();
                    },
                    child: Text("Kapat"),
                    color: Colors.redAccent,
                  ),
                ]),
              )
            ],
          );
        });
  }

  void toastMesajGoster(int index, bool uzunBasilma) {
    Fluttertoast.showToast(
        msg: uzunBasilma
            ? "Uzun basildi:" + allstudents[index].toString()
            : "qisa basildi:" + allstudents[index].toString(),
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}

class Ogrenci {
  String _ad;
  String _soyad;
  bool _cins;
  Ogrenci(this._ad, this._soyad, this._cins);
  @override
  String toString() {
    return "Secilen ogrenci adi $_ad soyadi $_soyad";
  }
}
