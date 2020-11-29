import 'package:flutter/material.dart';
import 'package:wahabsapp_clone/wathsapp_home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'WathsApp',
      theme: new ThemeData(
        primaryColor: new Color(0xff075E54),
        accentColor: new Color(0xff075E54),
      ),
      debugShowCheckedModeBanner: false,
      home: new WathsAppHome(),
    );
  }
}
