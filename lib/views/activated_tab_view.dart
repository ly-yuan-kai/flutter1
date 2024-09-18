import 'package:flutter/material.dart';

class ActivatedTabView extends StatefulWidget {
  TabController controller;
  List<String> tabs;
  Map<String, Widget> tabViews = {};

  ActivatedTabView({
    super.key,
    required this.controller,
    required this.tabs,
    required this.tabViews
  }) : assert(tabs.length == tabViews.length);

  @override
  _ActivatedTabViewState createState() => _ActivatedTabViewState();
}

class _ActivatedTabViewState extends State<ActivatedTabView> 
  with TickerProviderStateMixin {

  void _removeTab(int index) {
    setState(() {
      widget.tabViews.remove(widget.tabs[index]);
      widget.tabs.removeAt(index);
      widget.controller = TabController(length: widget.tabs.length, vsync: this);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(       
      children: [
        if (widget.tabs.isNotEmpty)
          TabBar(
            controller: widget.controller,
            isScrollable: true,
            tabs: widget.tabs.asMap().entries.map((entry) {
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
            widget.tabs.isNotEmpty 
              ? TabBarView(
                    controller: widget.controller,
                    children: widget.tabs.map((title) => widget.tabViews[title]!).toList(),
                )
              : Container(), 
        )
      ],
    );
  }
}

