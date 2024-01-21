import 'package:flutter/material.dart';

class RcmdMan extends StatelessWidget {
  const RcmdMan({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () {
        return Future(() => null);
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        color: Colors.black12,
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
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(8)),
                  child: const Placeholder(),
                ),
              ),
            ),
            const SliverToBoxAdapter(
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
                padding: const EdgeInsets.all(8),
                sliver: SliverGrid.count(
                  crossAxisCount: 6,
                  children: const [
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
                    ),
                  ],
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 8,
              ),
            ),
            DecoratedSliver(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              sliver: SliverMainAxisGroup(
                slivers: [
                  const SliverAppBar(
                    backgroundColor: Colors.transparent,
                    title: Text(
                      "畅销精选",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  SliverList.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return const ListTile(
                        leading: AspectRatio(
                          aspectRatio: 3 / 4,
                          child: Placeholder(),
                        ),
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
                                fontSize: 12,
                                color: Colors.black54,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              "文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black54,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                        trailing: Column(
                          children: [Icon(Icons.more_horiz)],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 8,
              ),
            ),
            DecoratedSliver(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              sliver: SliverMainAxisGroup(
                slivers: [
                  const SliverAppBar(
                    backgroundColor: Colors.transparent,
                    title: Text(
                      "主编力荐",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.all(8),
                    sliver: SliverGrid.count(
                      crossAxisSpacing: 12,
                      crossAxisCount: 4,
                      childAspectRatio: 3 / 5,
                      children: List<Widget>.generate(4, (index) {
                        return const Column(
                          children: [
                            Expanded(
                              child: AspectRatio(
                                aspectRatio: 3 / 4,
                                child: Placeholder(),
                              ),
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
                                fontSize: 12,
                                color: Colors.black54,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 8,
              ),
            ),
            DecoratedSliver(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              sliver: SliverMainAxisGroup(
                slivers: [
                  const SliverAppBar(
                    backgroundColor: Colors.transparent,
                    title: Text(
                      "新书强推",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  SliverList.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return const ListTile(
                        leading: AspectRatio(
                          aspectRatio: 3 / 4,
                          child: Placeholder(),
                        ),
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
                                fontSize: 12,
                                color: Colors.black54,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              "文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black54,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                        trailing: Column(
                          children: [Icon(Icons.more_horiz)],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 8,
              ),
            ),
            DecoratedSliver(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              sliver: SliverMainAxisGroup(
                slivers: [
                  const SliverAppBar(
                    backgroundColor: Colors.transparent,
                    title: TabBar(
                      labelPadding: EdgeInsets.all(8),
                      tabAlignment: TabAlignment.start,
                      isScrollable: true,
                      tabs: [
                        Tab(
                          text: "杀伐果断榜",
                        ),
                        Tab(
                          text: "群像榜",
                        ),
                        Tab(
                          text: "穿越榜",
                        ),
                        Tab(
                          text: "无敌流版本",
                        ),
                      ],
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    sliver: SliverToBoxAdapter(
                      child: LayoutBuilder(
                        builder: (context, constraints) => Wrap(
                          children: List.generate(
                            10,
                            (index) => Container(
                              width: constraints.minWidth / 2,
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "$index",
                                    style: const TextStyle(fontSize: 16),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  const Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "文字文字文字文字文字",
                                          style: TextStyle(fontSize: 16),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Text(
                                          "文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black54,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ).toList(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.all(12),
                child: const Text(
                  "猜你喜欢",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SliverList.separated(
              itemCount: 20,
              itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: const Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 4, horizontal: 14),
                      child: Row(
                        children: [
                          Text(
                            "你可能感兴趣的书",
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      leading:
                          AspectRatio(aspectRatio: 3 / 4, child: Placeholder()),
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
                            style:
                                TextStyle(fontSize: 12, color: Colors.black54),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            "文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字",
                            style:
                                TextStyle(fontSize: 12, color: Colors.black54),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              separatorBuilder: (context, index) => const SizedBox(
                height: 8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
