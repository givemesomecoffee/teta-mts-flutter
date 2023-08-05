import 'package:flutter/material.dart';

import '../news/news_screen.dart';
import '../search/search_screen.dart';

class RootContainer extends StatefulWidget {
  const RootContainer({Key? key}) : super(key: key);

  @override
  State<RootContainer> createState() => _RootContainerState();
}

class _RootContainerState extends State<RootContainer> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: <Widget>[
        const NewsScreen(),
        const SearchScreen()
      ][currentPageIndex],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.newspaper),
            label: 'News',
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
      ),
    );
  }
}
