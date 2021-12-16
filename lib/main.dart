import 'package:flutter/material.dart';
import "package:date_picker_test/screen/home/home.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Date Picker Test',
      home: Home(),
    );
  }
}
