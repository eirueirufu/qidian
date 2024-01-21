import 'package:flutter/material.dart';

class RcmdManga extends StatelessWidget {
  const RcmdManga({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Placeholder(),
            ),
          ),
          SliverMainAxisGroup(
            slivers: [
              const SliverAppBar(
                title: Text("小编精选"),
              ),
              SliverGrid.count(
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                crossAxisCount: 2,
                childAspectRatio: 3 / 4,
                children: List.generate(
                  4,
                  (index) => const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Placeholder(),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "文字文字文字",
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            "文字文字文字文字文字",
                            style:
                                TextStyle(fontSize: 12, color: Colors.black54),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SliverMainAxisGroup(
            slivers: [
              const SliverAppBar(
                title: Text("新书强推"),
              ),
              SliverGrid.count(
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                crossAxisCount: 3,
                childAspectRatio: 3 / 5,
                children: List.generate(
                  6,
                  (index) => const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Placeholder(),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "文字文字文字",
                            style: TextStyle(
                              fontSize: 14,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                            "文字文字文字文字文字",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black54,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SliverMainAxisGroup(
            slivers: [
              const SliverAppBar(
                title: Text(
                  "文字文字文字",
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const AspectRatio(
                        aspectRatio: 16 / 9,
                        child: Placeholder(),
                      ),
                    ),
                    const Text(
                      "文字文字文字",
                      style: TextStyle(
                        fontSize: 14,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const Text(
                      "文字文字文字文字文字",
                      style: TextStyle(
                        fontSize: 12,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const Text(
                      "文字文字文字文字文字文字文字文字文字文字",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black54,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          ...List.generate(
            4,
            (index) => SliverMainAxisGroup(
              slivers: [
                const SliverAppBar(
                  title: Text("新书强推"),
                ),
                SliverGrid.count(
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  crossAxisCount: 3,
                  childAspectRatio: 3 / 5,
                  children: List.generate(
                    6,
                    (index) => const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Placeholder(),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "文字文字文字",
                              style: TextStyle(
                                fontSize: 14,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Text(
                              "文字文字文字文字文字",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black54,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverMainAxisGroup(
            slivers: [
              const SliverAppBar(
                title: Text("畅销榜"),
              ),
              SliverList.separated(
                itemCount: 20,
                itemBuilder: (context, index) => ListTile(
                  leading: const AspectRatio(
                    aspectRatio: 3 / 4,
                    child: Placeholder(),
                  ),
                  title: const Text(
                    "文字文字文字文字",
                    style: TextStyle(fontSize: 14),
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "文字文字文字文字文字",
                        style: TextStyle(fontSize: 12, color: Colors.black54),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        "文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字",
                        style: TextStyle(fontSize: 12, color: Colors.black54),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  trailing: Text("$index"),
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 8,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
