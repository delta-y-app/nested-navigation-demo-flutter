import 'package:flutter/material.dart';
import 'package:nested_navigation_demo_flutter/tab_item.dart';

class BottomNavigation extends StatefulWidget {
  BottomNavigation({@required this.currentTab, @required this.onSelectTab});
  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      currentIndex: _currentIndex,
      items: [
        _buildItem(TabItem.backlog),
        _buildItem(TabItem.summits),
        _buildItem(TabItem.sprint),
        _buildItem(TabItem.whirlwind),
        _buildItem(TabItem.reports),
      ],
      onTap: (index) {
        widget.onSelectTab(
          TabItem.values[index],
        );

        setState(() {
          _currentIndex = index;
        });
      },
    );
  }

  BottomNavigationBarItem _buildItem(TabItem tabItem) {
    return BottomNavigationBarItem(
      icon: Icon(
        Icons.layers,
        color: _colorTabMatching(tabItem),
      ),
      label: tabName[tabItem],
    );
  }

  Color _colorTabMatching(TabItem item) {
    return widget.currentTab == item ? activeTabColor[item] : Colors.grey;
  }
}
