import 'package:flutter/material.dart';

class Shelf extends StatefulWidget {
  const Shelf({super.key});

  @override
  State<StatefulWidget> createState() => ShelfState();
}

class ShelfState extends State<Shelf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "今日已读233分钟",
          style: TextStyle(fontSize: 14, letterSpacing: .2),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          PopupMenuButton<String>(
              icon: Icon(Icons.more_horiz),
              elevation: 8,
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                      child: SwitchListTile(
                    value: true,
                    onChanged: (changed) {},
                    // leading: Icon(Icons.place),
                    title: Text("快捷操作入口"),
                    subtitle: Text("显示排序、浏览记录、管理及筛选"),
                  )),
                  PopupMenuItem(
                      child: ListTile(
                    leading: Icon(Icons.place),
                    title: Text("切换至图墙模式"),
                  )),
                  PopupMenuItem(
                      child: ListTile(
                    leading: Icon(Icons.place),
                    title: Text("本地书云管理"),
                  )),
                  PopupMenuItem(
                      child: ListTile(
                    leading: Icon(Icons.place),
                    title: Text("扫一扫"),
                  )),
                  PopupMenuItem(
                      child: ListTile(
                    leading: Icon(Icons.place),
                    title: Text("书架数据恢复"),
                  ))
                ];
              })
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () {
          return Future(() => null);
        },
        child: CustomScrollView(slivers: [
          SliverToBoxAdapter(
            child: ListTile(
                leading: Container(
                  width: 60,
                  child: Placeholder(),
                ),
                trailing: Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(Radius.circular(16))),
                  child: Text("签到"),
                ),
                title: Text(
                  "文字文字文字文字文字",
                  style: TextStyle(fontSize: 14),
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Row(
                  children: [
                    Chip(label: Text("tag")),
                    Chip(label: Text("tag")),
                    Chip(label: Text("tag"))
                  ],
                )),
          ),
          SliverAppBar(
            pinned: true,
            titleSpacing: 0,
            title: Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                Text(
                  "最近阅读",
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  "浏览记录",
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
            actions: [
              Text(
                "管理",
                style: TextStyle(fontSize: 10),
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                "筛选",
                style: TextStyle(fontSize: 10),
              ),
              SizedBox(
                width: 8,
              ),
            ],
          ),
          SliverList.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(8),
                  height: 100,
                  child: Row(
                    children: [
                      Placeholder(
                        fallbackWidth: 60,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                          child: Container(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "文字文字文字文字文字",
                              style: TextStyle(fontSize: 16),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              "文字文字文字文字文字",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black54),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              "文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black54),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      )),
                      SizedBox(
                        width: 8,
                      ),
                      Column(
                        children: [Icon(Icons.more_horiz)],
                      )
                    ],
                  ),
                );
              })
        ]),
      ),
    );
  }
}
