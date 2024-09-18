import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // left side bar
          NavigationRail(
            selectedIndex: 0,
            onDestinationSelected: (int index) {},
            labelType: NavigationRailLabelType.all,
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.menu),
                label: Text(''),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.circle),
                label: Text('A'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.circle),
                label: Text('B'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.circle),
                label: Text('C'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.circle),
                label: Text('D'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.circle),
                label: Text('E'),
              ),
            ],
          ),

          // right side
          Expanded(
            child: DefaultTabController(
              initialIndex: 0,
              length: 5,
              child: Scaffold(
                appBar: AppBar(
                  toolbarHeight: 0, // 移除标题栏高度
                  bottom: const PreferredSize(
                    preferredSize: Size.fromHeight(kToolbarHeight), // 设置底部区域的高度
                    child: Row(
                      children: [
                        Expanded(
                          child: TabBar(
                            dividerColor: Colors.transparent,
                            tabs: <Widget>[
                              Tab(text: '財務',),
                              Tab(text: '採購',),
                              Tab(text: '銷售',),
                              Tab(text: '租賃',),
                              Tab(text: '人事',),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          child: SearchBar(
                            hintText: '功能搜尋',
                            trailing: [Icon(Icons.search)],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                body: const TabBarView(
                  children: <Widget>[
                    NestedTabBar("財務"),
                    NestedTabBar("採購"),
                    NestedTabBar("銷售"),
                    NestedTabBar("租賃"),
                    NestedTabBar("人事"),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget _buildVerticalDivider() {
  return Container(
    height: 30.0, // 自定義高度
    child: const VerticalDivider(
      thickness: 2,
      color: Colors.grey,
    ),
  );
}

class NestedTabBar extends StatefulWidget {
  const NestedTabBar(this.outerTab, {super.key});

  final String outerTab;

  @override
  State<NestedTabBar> createState() => _NestedTabBarState();
}


class _NestedTabBarState extends State<NestedTabBar>
    with TickerProviderStateMixin {

  late final TabController _tabController;
  List<String> _tabs = [];
  Map<String, Widget> _tabViews= {};

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 0, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _addTab(String title, Widget view) {
    if (!_tabs.contains(title)) {
      setState(() {
        _tabs.add(title);
        _tabViews[title] = view;
      });

      // Dispose 舊的 TabController 並延遲初始化新的 TabController
      Future.microtask(() {
        _tabController.dispose();
        setState(() {
          _tabController = TabController(length: _tabs.length, vsync: this);
        });
      });
    }
  }

  void _removeTab(int index) {
    setState(() {
      _tabViews.remove(_tabs[index]);
      _tabs.removeAt(index);
    });

    // Dispose 舊的 TabController 並延遲初始化新的 TabController
    Future.microtask(() {
      _tabController.dispose();
      setState(() {
        _tabController = TabController(length: _tabs.length, vsync: this);
      });
    });
  }

  Widget _buildButton(String text) {
    return ElevatedButton(
      onPressed: () => _addTab(text, Center(child: Text(text))),
      child: Text(text),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 10),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Column(
        children: [
          Wrap(
            spacing: 5.0,
            runSpacing: 5.0,
            children: [
              _buildButton("History"),
              _buildButton('常用功能'),
              _buildVerticalDivider(),
              _buildButton('傳票'),
              _buildButton('搜索'),
            ],
          ),

          if(_tabs.isNotEmpty)
            TabBar(
              controller: _tabController,
              isScrollable: true,
              tabs: _tabs.asMap().entries.map((entry) {
                int index = entry.key;
                String title = entry.value;
                return Tab(
                  child: Row(
                    children: [
                      Text(title),
                      IconButton(
                        icon: Icon(Icons.close, size: 18),
                        onPressed: () => _removeTab(index),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          Expanded(
            child: _tabs.isNotEmpty
                ? TabBarView(
                    controller: _tabController,
                    children: _tabs.map((title) => _tabViews[title]!).toList(),
                  )
                : Center(child: Text('選擇一個功能來開始')),
          ),
        ],
      ),
    );
  }
}
