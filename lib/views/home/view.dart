import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quot_app/const.dart';
import 'package:quot_app/views/home/app_bar.dart';
import 'file:///C:/Users/laptop/AndroidStudioProjects/quot_app/lib/views/home/popular/view.dart';

class HomeView extends StatefulWidget {
  static String id = "Home View";

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  int _selectedTab = 0;

  TabController _tabController;

  List pages = [
    PopularView(),
    Text("2"),
    Text("3"),
    Text("4"),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 24),
        child: Column(
          children: [
            HomeAppBar(),
            homeTabBar(),
            Expanded(child: pages[_selectedTab])
          ],
        ),
      ),
    );
  }

  homeTabBar() {
    return Container(
      height: customHeight(context, 0.12),
      child: TabBar(
        controller: _tabController,
        isScrollable: true,
        indicatorColor: Colors.transparent,
        onTap: (val) {
          setState(() {
            _selectedTab = val;
          });
        },
        tabs: [
          Tab(
            child: Text(
              "Popular",
              style: TextStyle(
                fontSize: _selectedTab == 0 ? 35 : 30,
                fontWeight:
                    _selectedTab == 0 ? FontWeight.w600 : FontWeight.w400,
                color: _selectedTab == 0 ? kScandreyColor : Colors.grey[400],
              ),
            ),
          ),
          Tab(
            child: Text(
              "By author",
              style: TextStyle(
                fontSize: _selectedTab == 1 ? 35 : 30,
                fontWeight:
                    _selectedTab == 1 ? FontWeight.w600 : FontWeight.w400,
                color: _selectedTab == 1 ? kScandreyColor : Colors.grey[400],
              ),
            ),
          ),
          Tab(
            child: Text(
              "By general",
              style: TextStyle(
                fontSize: _selectedTab == 2 ? 35 : 30,
                fontWeight:
                    _selectedTab == 2 ? FontWeight.w600 : FontWeight.w400,
                color: _selectedTab == 2 ? kScandreyColor : Colors.grey[400],
              ),
            ),
          ),
          Tab(
            child: Text(
              "Favourite",
              style: TextStyle(
                fontSize: _selectedTab == 3 ? 35 : 30,
                fontWeight:
                    _selectedTab == 3 ? FontWeight.w600 : FontWeight.w400,
                color: _selectedTab == 3 ? kScandreyColor : Colors.grey[400],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
