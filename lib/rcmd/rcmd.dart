import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:qidian/rcmd/rcmd_man.dart';
import 'package:qidian/rcmd/rcmd_new.dart';
import 'package:qidian/rcmd/rcmd_woman.dart';

class Recommend extends StatefulWidget {
  const Recommend({super.key});

  @override
  State<StatefulWidget> createState() => RecommentState();
}

class RecommentState extends State<Recommend> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: 4,
        child: Scaffold(
          appBar: TabBar(
              tabAlignment: TabAlignment.start,
              isScrollable: true,
              labelStyle: TextStyle(fontSize: 18),
              unselectedLabelStyle: TextStyle(fontSize: 14),
              tabs: [
                Tab(
                  text: "新书",
                ),
                Tab(
                  text: "男生",
                ),
                Tab(
                  text: "女生",
                ),
                Tab(
                  text: "漫画",
                ),
              ]),
          body: Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.black12,
            child: TabBarView(children: [
              RcmdNew(),
              RcmdMan(),
              RcmdWoman(),
              Text("todo"),
            ]),
          ),
        ));
  }
}
