import 'package:flutter/material.dart';
import 'package:qidian/shelf/shelf.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<StatefulWidget> createState() => AppState();
}

class AppState extends State<App> with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '仿起点',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: Scaffold(
          body: SafeArea(
            child: Shelf(),
          ),
          bottomNavigationBar: NavigationBar(
              selectedIndex: selectedIndex,
              onDestinationSelected: (value) {
                setState(() {
                  selectedIndex = value;
                });
              },
              destinations: [
                NavigationDestination(
                  icon: Icon(Icons.shelves),
                  label: '书架',
                  selectedIcon: Icon(Icons.shelves),
                ),
                NavigationDestination(
                  icon: Icon(Icons.diamond),
                  label: '精选',
                  selectedIcon: Icon(Icons.diamond),
                ),
                NavigationDestination(
                  icon: Icon(Icons.headphones),
                  label: '听书',
                  selectedIcon: Icon(Icons.headphones),
                ),
                NavigationDestination(
                  icon: Icon(Icons.recommend_outlined),
                  label: '听书',
                  selectedIcon: Icon(Icons.recommend_outlined),
                ),
                NavigationDestination(
                  icon: Icon(Icons.account_circle_rounded),
                  label: '我',
                  selectedIcon: Icon(Icons.account_circle_rounded),
                )
              ])),
    );
  }
}
