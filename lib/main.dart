// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unused_import
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFF0A0D22),
          colorScheme: ColorScheme.fromSwatch().copyWith(
              primary: Color(0xFF0A0D22), secondary: Color(0xFF0A0D22))),
      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}
