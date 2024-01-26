import 'package:flutter/material.dart';
import 'package:qidian/explore/explore_author_follow.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  final listLength = 8;
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textScheme = Theme.of(context).textTheme;

    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Scaffold(
        appBar: const TabBar(
          tabs: [
            Tab(
              text: "关注",
            ),
            Tab(
              text: "广场",
            ),
          ],
        ),
        body: TabBarView(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              child: ListView.separated(
                itemBuilder: (context, index) =>
                    index == 0 || index == listLength - 1
                        ? Container()
                        : const AuthorFollow(),
                separatorBuilder: (context, index) => const SizedBox(height: 8),
                itemCount: listLength,
              ),
            ),
            // Container()
            CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  sliver: DecoratedSliver(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: colorScheme.primaryContainer,
                    ),
                    sliver: SliverPadding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      sliver: SliverGrid.count(
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                        crossAxisCount: 5,
                        children: List.generate(
                          10,
                          (index) => Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Expanded(
                                child: AspectRatio(
                                  aspectRatio: 3 / 4,
                                  child: Placeholder(),
                                ),
                              ),
                              Text(
                                "文字",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: textScheme.titleSmall,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.all(8),
                  sliver: SliverGrid.count(
                    crossAxisSpacing: 8,
                    crossAxisCount: 3,
                    childAspectRatio: 2 / 1,
                    children: List.generate(
                      3,
                      (index) => Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: colorScheme.primaryContainer,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "文字",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: textScheme.titleSmall,
                            ),
                            Text(
                              "文字",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: textScheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SliverList.separated(
                  itemCount: 8,
                  itemBuilder: (context, index) => Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: colorScheme.primaryContainer,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.account_circle_outlined,
                              size: 32,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "文字文字文字文字文字文字文字",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: textScheme.bodyMedium,
                                  ),
                                  Text(
                                    "文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: textScheme.bodySmall,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: textScheme.bodyMedium,
                        ),
                        const SizedBox(height: 8),
                        SizedBox(
                          height: 100,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => const AspectRatio(
                              aspectRatio: 3 / 4,
                              child: Placeholder(),
                            ),
                            separatorBuilder: (context, index) =>
                                const SizedBox(width: 8),
                            itemCount: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 8),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
