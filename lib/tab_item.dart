import 'package:flutter/material.dart';
import 'package:nested_navigation_demo_flutter/tab_navigator.dart';

enum TabItem { backlog, whirlwind, sprint, summits, reports }

class TabItemTo {
  static const Map<TabItem, MaterialColor> activeTabColor = {
    TabItem.backlog: Colors.red,
    TabItem.summits: Colors.green,
    TabItem.sprint: Colors.blue,
    TabItem.whirlwind: Colors.orange,
    TabItem.reports: Colors.purple,
  };

  static const Map<TabItem, String> tabName = {
    TabItem.backlog: 'Backlog',
    TabItem.whirlwind: 'Whirlwind',
    TabItem.sprint: 'Sprint',
    TabItem.summits: 'Summits',
    TabItem.reports: 'Reports',
  };

  static const Map<TabItem, String> tabRoutes = {
    TabItem.backlog: TabNavigatorRoutes.backlog,
    TabItem.whirlwind: TabNavigatorRoutes.whirlwind,
    TabItem.sprint: TabNavigatorRoutes.sprint,
    TabItem.summits: TabNavigatorRoutes.summits,
    TabItem.reports: TabNavigatorRoutes.reports,
  };

  static const Map<TabItem, String> tabDetailRoutes = {
    TabItem.backlog: TabNavigatorRoutes.backlogDetail,
    TabItem.whirlwind: TabNavigatorRoutes.whirlwindDetail,
    TabItem.sprint: TabNavigatorRoutes.sprintDetail,
    TabItem.summits: TabNavigatorRoutes.summitsDetail,
    TabItem.reports: TabNavigatorRoutes.reportsDetail,
  };

  static const Map<TabItem, IconData> tabIconData = {
    TabItem.backlog: Icons.arrow_back,
    TabItem.whirlwind: Icons.wifi,
    TabItem.sprint: Icons.calendar_today,
    TabItem.summits: Icons.golf_course,
    TabItem.reports: Icons.bar_chart,
  };
}
