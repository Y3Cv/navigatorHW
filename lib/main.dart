import 'package:flutter/material.dart';
import 'package:navigatorf/pages/itemlist.dart';

void main() { runApp(MyApp()); }
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ItemList()
    );
  }
}
