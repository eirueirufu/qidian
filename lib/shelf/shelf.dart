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
          style: Theme.of(context).textTheme.titleSmall,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_horiz),
            elevation: 8,
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: SwitchListTile(
                    value: true,
                    onChanged: (changed) {},
                    // leading: Icon(Icons.place),
                    title: const Text("快捷操作入口"),
                    subtitle: const Text("显示排序、浏览记录、管理及筛选"),
                  ),
                ),
                const PopupMenuItem(
                  child: ListTile(
                    leading: Icon(Icons.place),
                    title: Text("切换至图墙模式"),
                  ),
                ),
                const PopupMenuItem(
                  child: ListTile(
                    leading: Icon(Icons.place),
                    title: Text("本地书云管理"),
                  ),
                ),
                const PopupMenuItem(
                  child: ListTile(
                    leading: Icon(Icons.place),
                    title: Text("扫一扫"),
                  ),
                ),
                const PopupMenuItem(
                  child: ListTile(
                    leading: Icon(Icons.place),
                    title: Text("书架数据恢复"),
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () {
          return Future(() => null);
        },
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: ListTile(
                leading:
                    const AspectRatio(aspectRatio: 3 / 4, child: Placeholder()),
                title: Text(
                  "文字文字文字文字文字",
                  style: Theme.of(context).textTheme.titleMedium,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List<Widget>.generate(10, (index) {
                      return Container(
                        padding: const EdgeInsets.all(2),
                        margin: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)),
                        ),
                        child: Text(
                          "tag",
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      );
                    }),
                  ),
                ),
              ),
            ),
            SliverAppBar(
              pinned: true,
              titleSpacing: 0,
              title: Row(
                children: [
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "最近阅读",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    "浏览记录",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
              actions: [
                Text(
                  "管理",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  "筛选",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                const SizedBox(
                  width: 8,
                ),
              ],
            ),
            SliverList.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const AspectRatio(
                    aspectRatio: 3 / 4,
                    child: Placeholder(),
                  ),
                  title: Text(
                    "文字文字文字文字文字",
                    style: Theme.of(context).textTheme.titleMedium,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "文字文字文字文字文字",
                        style: Theme.of(context).textTheme.labelMedium,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        "文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字",
                        style: Theme.of(context).textTheme.labelSmall,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  trailing: const Column(
                    children: [Icon(Icons.more_horiz)],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
