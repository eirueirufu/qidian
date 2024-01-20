import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Recommend extends StatefulWidget {
  const Recommend({super.key});

  @override
  State<StatefulWidget> createState() => RecommentState();
}

class RecommentState extends State<Recommend> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
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
          body: TabBarView(children: [
            Container(
              color: Colors.black12,
              padding: EdgeInsets.all(8),
              child: CustomScrollView(
                slivers: [
                  DecoratedSliver(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    sliver: SliverToBoxAdapter(
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8)),
                        child: Placeholder(),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 8,
                    ),
                  ),
                  DecoratedSliver(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      sliver: SliverPadding(
                        padding: EdgeInsets.all(8),
                        sliver: SliverGrid.count(
                          crossAxisCount: 6,
                          children: [
                            Tab(
                              text: "分类",
                              icon: Icon(Icons.book),
                            ),
                            Tab(
                              text: "排行",
                              icon: Icon(Icons.book),
                            ),
                            Tab(
                              text: "三江",
                              icon: Icon(Icons.book),
                            ),
                            Tab(
                              text: "剧场",
                              icon: Icon(Icons.book),
                            ),
                            Tab(
                              text: "新书",
                              icon: Icon(Icons.book),
                            ),
                            Tab(
                              text: "完本",
                              icon: Icon(Icons.book),
                            )
                          ],
                        ),
                      )),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 8,
                    ),
                  ),
                  DecoratedSliver(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    sliver: SliverMainAxisGroup(slivers: [
                      SliverAppBar(
                        backgroundColor: Colors.transparent,
                        title: Text(
                          "畅销精选",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      SliverList.builder(
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: AspectRatio(
                                  aspectRatio: 3 / 4, child: Placeholder()),
                              title: Text(
                                "文字文字文字文字文字",
                                style: TextStyle(fontSize: 16),
                                overflow: TextOverflow.ellipsis,
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
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
                              trailing: Column(
                                children: [Icon(Icons.more_horiz)],
                              ),
                            );
                          })
                    ]),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 8,
                    ),
                  ),
                  DecoratedSliver(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    sliver: SliverMainAxisGroup(slivers: [
                      SliverAppBar(
                        backgroundColor: Colors.transparent,
                        title: Text(
                          "主编力荐",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      SliverPadding(
                        padding: EdgeInsets.all(16),
                        sliver: SliverGrid.count(
                            crossAxisSpacing: 12,
                            crossAxisCount: 4,
                            childAspectRatio: 3 / 5,
                            children: List<Widget>.generate(4, (index) {
                              return Column(children: [
                                Expanded(
                                  child: AspectRatio(
                                      aspectRatio: 3 / 4, child: Placeholder()),
                                ),
                                Text(
                                  "文字文字文字文字文字",
                                  maxLines: 2,
                                  style: TextStyle(fontSize: 14),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  "文字文字文字文字文字",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black54),
                                  overflow: TextOverflow.ellipsis,
                                )
                              ]);
                            })),
                      )
                    ]),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 8,
                    ),
                  ),
                  DecoratedSliver(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    sliver: SliverMainAxisGroup(slivers: [
                      SliverAppBar(
                        backgroundColor: Colors.transparent,
                        title: Text(
                          "新书强推",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      SliverList.builder(
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: AspectRatio(
                                  aspectRatio: 3 / 4, child: Placeholder()),
                              title: Text(
                                "文字文字文字文字文字",
                                style: TextStyle(fontSize: 16),
                                overflow: TextOverflow.ellipsis,
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
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
                              trailing: Column(
                                children: [Icon(Icons.more_horiz)],
                              ),
                            );
                          })
                    ]),
                  )
                ],
              ),
            ),
            Text("todo"),
            Text("todo"),
            Text("todo"),
          ]),
        ));
  }
}
