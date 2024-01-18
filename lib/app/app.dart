import 'package:flutter/material.dart';
import 'package:qidian/shelf/shelf.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<StatefulWidget> createState() => AppState();
}

class AppState extends State<App> with SingleTickerProviderStateMixin {
  late final TabController _tabController;

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
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: SafeArea(
          child: TabBarView(
            controller: _tabController,
            children: const [
              Shelf(),
              Text("todo"),
              Text("todo"),
              Text("todo"),
              Text("todo"),
            ],
          ),
        ),
        bottomNavigationBar: TabBar(controller: _tabController, tabs: const [
          Tab(
            icon: Icon(Icons.shelves),
            text: "书架",
          ),
          Tab(
            icon: Icon(Icons.diamond),
            text: "精选",
          ),
          Tab(
            icon: Icon(Icons.headphones),
            text: "听书",
          ),
          Tab(
            icon: Icon(Icons.recommend_outlined),
            text: "发现",
          ),
          Tab(
            icon: Icon(Icons.account_circle_rounded),
            text: "我",
          ),
        ]),
        // body: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
