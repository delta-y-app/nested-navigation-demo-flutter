import 'package:flutter/material.dart';
import 'package:nested_navigation_demo_flutter/bottom_navigation.dart';
import 'package:nested_navigation_demo_flutter/tab_item.dart';
import 'package:nested_navigation_demo_flutter/tab_navigator.dart';

class AppFrame extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AppFrameState();
}

class AppFrameState extends State<AppFrame> {
  var _currentTab = TabItem.sprint;
  final _navigatorKeys = {
    TabItem.backlog: GlobalKey<NavigatorState>(),
    TabItem.whirlwind: GlobalKey<NavigatorState>(),
    TabItem.sprint: GlobalKey<NavigatorState>(),
    TabItem.summits: GlobalKey<NavigatorState>(),
    TabItem.reports: GlobalKey<NavigatorState>(),
  };

  void _selectTab(TabItem tabItem) {
    if (tabItem == _currentTab) {
      // pop to first route
      _navigatorKeys[tabItem].currentState.popUntil((route) => route.isFirst);
    } else {
      setState(() => _currentTab = tabItem);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
            !await _navigatorKeys[_currentTab].currentState.maybePop();
        if (isFirstRouteInCurrentTab) {
          // if not on the 'main' tab
          if (_currentTab != TabItem.sprint) {
            // select 'main' tab
            _selectTab(TabItem.sprint);
            // back button handled by app
            return false;
          }
        }
        // let system handle back button if we're on the first route
        return isFirstRouteInCurrentTab;
      },
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(Icons.more_horiz),
            )
          ],
        ),
        drawer: Drawer(),
        body: Stack(children: <Widget>[
          _buildOffstageNavigator(TabItem.backlog),
          _buildOffstageNavigator(TabItem.whirlwind),
          _buildOffstageNavigator(TabItem.sprint),
          _buildOffstageNavigator(TabItem.summits),
          _buildOffstageNavigator(TabItem.reports),
        ]),
        bottomNavigationBar: BottomNavigation(
          currentTab: _currentTab,
          onSelectTab: _selectTab,
        ),
      ),
    );
  }

  Widget _buildOffstageNavigator(TabItem tabItem) {
    return Offstage(
      offstage: _currentTab != tabItem,
      child: TabNavigator(
        navigatorKey: _navigatorKeys[tabItem],
        tabItem: tabItem,
      ),
    );
  }
}
