import 'package:flutter/material.dart';

class MainTabBar extends StatefulWidget {
  TabController controller;
  List<String> tabs;
  Map<String, Widget> tabViews;
  final Map<String, List<String>> mainTabs;

  MainTabBar({
    super.key,
    required this.controller,
    required this.tabs,
    required this.tabViews,
    required this.mainTabs
  }) : assert(tabs.length == tabViews.length);

  @override
  _MainTabBarState createState() => _MainTabBarState();
}

class _MainTabBarState extends State<MainTabBar> 
  with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: widget.controller,
      isScrollable: true,
      dividerColor: Colors.transparent,
      tabAlignment: TabAlignment.start,
      tabs: widget.mainTabs.keys.map((title) => Tab(text: title)).toList(),
    );
  }
}

class MainTabBarView extends StatefulWidget {
  TabController mainController;
  TabController viewController;
  List<String> tabs;
  Map<String, Widget> tabViews;
  final Map<String, List<String>> mainTabs;

  MainTabBarView({
    super.key,
    required this.mainController,
    required this.viewController,
    required this.tabs,
    required this.tabViews,
    required this.mainTabs
  }) : assert(tabs.length == tabViews.length);

  @override
  _MainTabBarViewState createState() => _MainTabBarViewState();
}

class _MainTabBarViewState extends State<MainTabBarView> 
  with TickerProviderStateMixin {

  void _addTab(String title, Widget view) {
    if (!widget.tabs.contains(title)) {
      setState(() {
        widget.tabs.add(title);
        widget.tabViews[title] = view;
        widget.viewController = TabController(length: widget.tabs.length, vsync: this);
      });
    }
  }

  Widget _buildButton(String text) {
    return ElevatedButton(
      onPressed: () => _addTab(text, Center(child: Text(text))),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 10),
      ),
      child: Text(text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 10),
      child: TabBarView(
        controller: widget.mainController,
        children: widget.mainTabs.keys.map((title) => Align(
          alignment: Alignment.topCenter,
          child: Wrap(
            direction: Axis.vertical,
            spacing: 7.0,
            children: widget.mainTabs[title]!.map((text) => _buildButton(text)).toList()
          ),
        )).toList(),
      ),
    );
  }
}


