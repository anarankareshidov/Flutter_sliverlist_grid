import 'package:flutter/material.dart';
import 'package:flutter_apps/Ui/custom_scroll_sliver.dart';
import 'package:flutter_apps/Ui/etkin_list_numune.dart';
import 'package:flutter_apps/Ui/grid_viewnum.dart';

import 'Ui/liste_dersleri.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter dersleri",
    theme: ThemeData(primarySwatch: Colors.blue),
    home: Scaffold(
      // appBar: AppBar(title: Text("Liste derslere ")),
      body: CustomScrol(),
    ),
  ));
}
