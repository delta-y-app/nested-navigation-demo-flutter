import 'package:flutter/material.dart';

class SprintDetailPage extends StatelessWidget {
  SprintDetailPage({this.color, this.title, this.materialIndex: 500});
  final MaterialColor color;
  final String title;
  final int materialIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
            child: Row(
              children: [
                Flexible(child: Container(child: Text("SprintDetail"))),
                Flexible(child: CloseButton())
              ],
            ),
          ),
          Flexible(
            child: Container(
              color: color[materialIndex],
            ),
          ),
        ],
      ),
    );
  }
}
