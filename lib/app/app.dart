import 'package:flutter/material.dart';
import 'package:qidian/explore/explore.dart';
import 'package:qidian/listen/listen.dart';
import 'package:qidian/me/me.dart';
import 'package:qidian/rcmd/rcmd.dart';
import 'package:qidian/shelf/shelf.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<StatefulWidget> createState() => AppState();
}

class AppState extends State<App> with SingleTickerProviderStateMixin {
  int selectedIndex = 3;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '仿起点',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.system,
      home: Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: selectedIndex,
            children: const [
              Shelf(),
              Recommend(),
              Listen(),
              Explore(),
              Me(),
            ],
          ),
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: selectedIndex,
          onDestinationSelected: (value) {
            setState(
              () {
                selectedIndex = value;
              },
            );
          },
          destinations: const [
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
              label: '发现',
              selectedIcon: Icon(Icons.recommend_outlined),
            ),
            NavigationDestination(
              icon: Icon(Icons.account_circle_rounded),
              label: '我',
              selectedIcon: Icon(Icons.account_circle_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
