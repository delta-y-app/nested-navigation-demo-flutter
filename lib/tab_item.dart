import 'package:flutter/material.dart';
import 'package:nested_navigation_demo_flutter/tab_navigator.dart';

// TODO: make these all non-global

enum TabItem { backlog, whirlwind, sprint, summits, reports }

const Map<TabItem, String> tabName = {
  TabItem.backlog: 'Backlog',
  TabItem.whirlwind: 'Whirlwind',
  TabItem.sprint: 'Sprint',
  TabItem.summits: 'Summits',
  TabItem.reports: 'Reports',
};

const Map<TabItem, String> tabRoutes = {
  TabItem.backlog: TabNavigatorRoutes.backlog,
  TabItem.whirlwind: TabNavigatorRoutes.whirlwind,
  TabItem.sprint: TabNavigatorRoutes.sprint,
  TabItem.summits: TabNavigatorRoutes.summits,
  TabItem.reports: TabNavigatorRoutes.reports,
};

const Map<TabItem, IconData> tabIconData = {
  TabItem.backlog: Icons.arrow_back,
  TabItem.whirlwind: Icons.wifi,
  TabItem.sprint: Icons.calendar_today,
  TabItem.summits: Icons.golf_course,
  TabItem.reports: Icons.bar_chart,
};
