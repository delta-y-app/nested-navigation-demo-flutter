import 'package:flutter/material.dart';
import 'package:nested_navigation_demo_flutter/tab_item.dart';

class ColorsListPage extends StatelessWidget {
  ColorsListPage({this.color, this.title, this.onPush});
  final MaterialColor color;
  final String title;
  final ValueChanged<int> onPush;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: _buildList(),
      ),
    );
  }

  final List<int> materialIndices = [
    900,
    800,
    700,
    600,
    500,
    400,
    300,
    200,
    100,
    50
  ];

  Widget _buildList() {
    return ListView.builder(
        itemCount: materialIndices.length,
        itemBuilder: (BuildContext content, int index) {
          int materialIndex = materialIndices[index];
          return Container(
            color: color[materialIndex],
            child: ListTile(
              title: Text('$materialIndex', style: TextStyle(fontSize: 24.0)),
              trailing: Icon(Icons.chevron_right),
              onTap: () => onPush(materialIndex),
            ),
          );
        });
  }
}

const Map<TabItem, MaterialColor> activeTabColor = {
  TabItem.backlog: Colors.red,
  TabItem.summits: Colors.green,
  TabItem.sprint: Colors.blue,
  TabItem.whirlwind: Colors.orange,
  TabItem.reports: Colors.purple,
};
