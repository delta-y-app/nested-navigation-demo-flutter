import 'package:flutter/material.dart';
import 'package:nested_navigation_demo_flutter/app_frame.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: AppFrame(),
    );
  }
}
