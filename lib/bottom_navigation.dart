import 'package:flutter/material.dart';
import 'package:nested_navigation_demo_flutter/tab_item.dart';
import 'package:nested_navigation_demo_flutter/tab_navigator.dart';

class BottomNavigation extends StatefulWidget {
  BottomNavigation({@required this.currentTab, @required this.onSelectTab});
  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 2;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Theme.of(context).primaryColor,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      currentIndex: _currentIndex,
      selectedItemColor: Colors.white,
      items: [
        _buildItem(TabItem.backlog),
        _buildItem(TabItem.whirlwind),
        _buildItem(TabItem.sprint),
        _buildItem(TabItem.summits),
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
        tabIconData[tabItem],
        color: widget.currentTab == tabItem
            ? Colors.white
            : Color.fromRGBO(220, 220, 220, 100),
      ),
      label: tabName[tabItem],
    );
  }
}
