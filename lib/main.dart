import 'package:flutter/material.dart';
import 'package:nested_navigation_demo_flutter/app_frame.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Demo',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 80, 80, 80), // Dark grey
      ),
      home: AppFrame(),
    );
  }
}
