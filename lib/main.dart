import 'package:flutter/material.dart';
import 'views/journal_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  
  late TabController _tabViewController;
  late TabController _tabMainController;
  List<String> _tabs = [];
  Map<String, Widget> _tabViews = {};

  final Map<String, List<String>> _mainTabs = {
    '財務': [
      'History', '常用功能', '傳票', 
      '搜尋', '進項發票', '銷項發票',
      '應收應付', '銀存列表', '現金列表',
      '出納作業', '合約計價', '零星計價',
      '銷售收款', '租金收款', '資產負債表',
      '損益表', '報表'],
    '採購': ['合約計價', '零星計價'],
    '銷售': ['銷售合約', '客戶資料'],
    '租賃': ['租賃合約', ],
    '人事': ['員工資料', '薪資發放'],
  };

  @override
  void initState() {
    super.initState();
    _tabViewController = TabController(length: 0, vsync: this);
    _tabMainController = TabController(length: 5, vsync: this);
  }

  void _addTab(String title, Widget view) {
    if (!_tabs.contains(title)) {
      setState(() {
        _tabs.add(title);
        _tabViews[title] = view;
        _tabViewController = TabController(length: _tabs.length, vsync: this);
      });
    }
  }

  void _removeTab(int index) {
    setState(() {
      _tabViews.remove(_tabs[index]);
      _tabs.removeAt(index);
      _tabViewController = TabController(length: _tabs.length, vsync: this);
    });
  }

  Widget _buildButton(String text) {
    return ElevatedButton(
      onPressed: () => _addTab(text, JournalView()),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 10),
      ),
      child: Text(text),
    );
  }

  Widget _buildVerticalDivider() {
    return const SizedBox(
      height: 30.0, // 自定義高度
      child: VerticalDivider(
        thickness: 2,
        color: Colors.grey,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // left side bar
          // NavigationRail(
          //   selectedIndex: 0,
          //   onDestinationSelected: (int index) {},
          //   labelType: NavigationRailLabelType.all,
          //   destinations: const [
          //     NavigationRailDestination(
          //       icon: Icon(Icons.menu),
          //       label: Text(''),
          //     ),
          //     NavigationRailDestination(
          //       icon: Icon(Icons.circle),
          //       label: Text('A'),
          //     ),
          //     NavigationRailDestination(
          //       icon: Icon(Icons.circle),
          //       label: Text('B'),
          //     ),
          //     NavigationRailDestination(
          //       icon: Icon(Icons.circle),
          //       label: Text('C'),
          //     ),
          //     NavigationRailDestination(
          //       icon: Icon(Icons.circle),
          //       label: Text('D'),
          //     ),
          //     NavigationRailDestination(
          //       icon: Icon(Icons.circle),
          //       label: Text('E'),
          //     ),
          //   ],
          // ),

          // 主選單
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: TabBar(
                  controller: _tabMainController,
                  isScrollable: true,
                  dividerColor: Colors.transparent,
                  tabAlignment: TabAlignment.start,
                  tabs: _mainTabs.keys.map((title) => Tab(text: title)).toList(),
                ),
              ),
              const SizedBox(
                width: 200,
                height: 35,
                child: SearchBar(
                  hintText: '功能搜尋',
                  trailing: [Icon(Icons.search)],
                ),
              ),
            ],
          ),

          const Divider(height: 0,),

          Expanded(
            child: Row(
              children: [
                
                // 功能列表
                Expanded(
                  flex: 1,
                    child: Container(
                    margin: const EdgeInsets.only(left: 20, top: 10),
                    child: TabBarView(
                      controller: _tabMainController,
                      children: _mainTabs.keys.map((title) => Align(
                        alignment: Alignment.topCenter,
                        child: Wrap(
                          direction: Axis.vertical,
                          spacing: 7.0,
                          children: _mainTabs[title]!.map((text) => _buildButton(text)).toList()
                        ),
                      )).toList(),
                    ),
                  ),
                ),
              
                const VerticalDivider(width: 0,),
                
                Expanded(
                  flex: 10,
                  child: Column(       
                    children: [
                      if (_tabs.isNotEmpty)
                        TabBar(
                          controller: _tabViewController,
                          isScrollable: true,
                          tabs: _tabs.asMap().entries.map((entry) {
                            int index = entry.key;
                            String title = entry.value;
                            return Tab(
                              child: Row(
                                children: [
                                  Text(title),
                                  IconButton(
                                    icon: const Icon(Icons.close, size: 14),
                                    onPressed: () => _removeTab(index),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),

                      Expanded(
                        child:
                          _tabs.isNotEmpty 
                            ? TabBarView(
                                  controller: _tabViewController,
                                  children: _tabs.map((title) => _tabViews[title]!).toList(),
                              )
                            : Container(), 
                      )
                    ],
                  ),
                )

              ],
            ),
          ),
          


        ],
    

      ),
    );
  }
}