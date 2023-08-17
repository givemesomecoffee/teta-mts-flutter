import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

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
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
  }
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
            label: 'Новости',
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: 'Поиск',
          ),
        ],
      ),
    );
  }
}
