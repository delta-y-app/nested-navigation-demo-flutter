import 'package:flutter/material.dart';

// TODO: separate dummy detail pages into different files

class BacklogDetailPage extends StatelessWidget {
  BacklogDetailPage({this.color, this.title, this.materialIndex: 500});
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
                Flexible(child: Container(child: Text("BacklogDetail"))),
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

class WhirlwindDetailPage extends StatelessWidget {
  WhirlwindDetailPage({this.color, this.title, this.materialIndex: 500});
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
                Flexible(child: Container(child: Text("WhirlwindDetail"))),
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

class SummitsDetailPage extends StatelessWidget {
  SummitsDetailPage({this.color, this.title, this.materialIndex: 500});
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
                Flexible(child: Container(child: Text("SummitsDetail"))),
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

class ReportsDetailPage extends StatelessWidget {
  ReportsDetailPage({this.color, this.title, this.materialIndex: 500});
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
                Flexible(child: Container(child: Text("ReportsDetail"))),
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
