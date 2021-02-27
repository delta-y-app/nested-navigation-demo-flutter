import 'package:flutter/material.dart';

enum TabItem { backlog, summits, sprint, whirlwind, reports }

const Map<TabItem, String> tabName = {
  TabItem.backlog: 'Backlog',
  TabItem.summits: 'Summits',
  TabItem.sprint: 'Sprint',
  TabItem.whirlwind: 'Whirlwind',
  TabItem.reports: 'Reports',
};

const Map<TabItem, MaterialColor> activeTabColor = {
  TabItem.backlog: Colors.red,
  TabItem.summits: Colors.green,
  TabItem.sprint: Colors.blue,
  TabItem.whirlwind: Colors.orange,
  TabItem.reports: Colors.purple,
};
