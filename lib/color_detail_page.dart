import 'package:flutter/material.dart';

class ColorDetailPage extends StatelessWidget {
  ColorDetailPage({this.color, this.title, this.materialIndex: 500});
  final MaterialColor color;
  final String title;
  final int materialIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: color[materialIndex],
      ),
    );
  }
}
