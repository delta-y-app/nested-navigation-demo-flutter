import 'package:flutter/material.dart';
import 'package:nested_navigation_demo_flutter/color_detail_page.dart';
import 'package:nested_navigation_demo_flutter/colors_list_page.dart';
import 'package:nested_navigation_demo_flutter/tab_item.dart';

class TabNavigatorRoutes {
  // TODO: add / prefix to all paths (removing it made it stop throwing exceptions)
  //static const String login = '/';

  static const String backlog = 'backlog';
  static const String whirlwind = 'whirlwind';
  static const String sprint = 'sprint';
  static const String summits = 'summits';
  static const String reports = 'reports';

  static const String backlogDetail = '/backlog/detail';
  static const String whirlwindDetail = '/whirlwind/detail';
  static const String sprintDetail = '/sprint/detail';
  static const String summitsDetail = '/summits/detail';
  static const String reportsDetail = '/reports/detail';
}

class TabNavigator extends StatelessWidget {
  TabNavigator({this.navigatorKey, this.tabItem});
  final GlobalKey<NavigatorState> navigatorKey;
  final TabItem tabItem;
  final String _initialRoute = TabNavigatorRoutes
      .sprint; // TODO: change this depending on what is selected

// TODO: remove materialIndex arg
  void _push(BuildContext context, String routeName, {int materialIndex: 500}) {
    var routeBuilders = _routeBuilders(context, materialIndex: materialIndex);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => routeBuilders[TabNavigatorRoutes.summitsDetail](
            context), // TODO: change detail page depending on which page was navigated from
      ),
    );

    // TODO: delme?
    //print("pushNamed called!=============================");
    //Navigator.pushNamed(context, routeName);
  }

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context,
      {int materialIndex: 500}) {
    return {
      TabNavigatorRoutes.backlog: (context) => BacklogPage(
            color: activeTabColor[tabItem],
            title: tabName[tabItem],
            onPush: (materialIndex) => _push(
                context, TabNavigatorRoutes.backlog,
                materialIndex: materialIndex),
          ),
      TabNavigatorRoutes.whirlwind: (context) => WhirlwindPage(
            color: activeTabColor[tabItem],
            title: tabName[tabItem],
            onPush: (materialIndex) => _push(
                context, TabNavigatorRoutes.whirlwind,
                materialIndex: materialIndex),
          ),
      TabNavigatorRoutes.sprint: (context) => SprintPage(
            color: activeTabColor[tabItem],
            title: tabName[tabItem],
            onPush: (materialIndex) => _push(context, TabNavigatorRoutes.sprint,
                materialIndex: materialIndex),
          ),
      TabNavigatorRoutes.summits: (context) => SummitsPage(
            color: activeTabColor[tabItem],
            title: tabName[tabItem],
            onPush: (materialIndex) => _push(
                context, TabNavigatorRoutes.summits,
                materialIndex: materialIndex),
          ),
      TabNavigatorRoutes.reports: (context) => ReportsPage(
            color: activeTabColor[tabItem],
            title: tabName[tabItem],
            onPush: (materialIndex) => _push(
                context, TabNavigatorRoutes.reports,
                materialIndex: materialIndex),
          ),
      TabNavigatorRoutes.backlogDetail: (context) => BacklogDetailPage(
            color: activeTabColor[tabItem],
            title: tabName[tabItem],
            materialIndex: materialIndex,
          ),
      TabNavigatorRoutes.whirlwindDetail: (context) => WhirlwindDetailPage(
            color: activeTabColor[tabItem],
            title: tabName[tabItem],
            materialIndex: materialIndex,
          ),
      TabNavigatorRoutes.sprintDetail: (context) => SprintDetailPage(
            color: activeTabColor[tabItem],
            title: tabName[tabItem],
            materialIndex: materialIndex,
          ),
      TabNavigatorRoutes.summitsDetail: (context) => SummitsDetailPage(
            color: activeTabColor[tabItem],
            title: tabName[tabItem],
            materialIndex: materialIndex,
          ),
      TabNavigatorRoutes.reportsDetail: (context) => ReportsDetailPage(
            color: activeTabColor[tabItem],
            title: tabName[tabItem],
            materialIndex: materialIndex,
          ),
    };
  }

  @override
  Widget build(BuildContext context) {
    final routeBuilders = _routeBuilders(context);
    return Navigator(
      key: navigatorKey,
      initialRoute:
          _initialRoute, // FIXME: whichever route is the initialRoute is built first (instead of building each individual page)
      onGenerateRoute: (routeSettings) {
        print("routeSettings.name == " +
            routeSettings
                .name); // FIXME: this isn't getting called every time I go to a new tab, which indicates that build isn't being called
        return MaterialPageRoute(
          //builder: (context) => routeBuilders[routeSettings.name](context),
          builder: (context) => routeBuilders[tabRoutes[tabItem]](context),
        );
      },
    );
  }
}
