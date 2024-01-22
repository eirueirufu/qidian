import 'package:flutter/material.dart';

class BookTabCard extends StatefulWidget {
  final List<String> tabs = ["杀伐果断榜", "群像榜", "穿越榜", "无敌流版本"];

  BookTabCard({super.key});

  @override
  State<StatefulWidget> createState() => BookTabCardState();
}

class BookTabCardState extends State<BookTabCard>
    with SingleTickerProviderStateMixin {
  late final TabController tabController;
  int tabIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
    tabController.addListener(() {
      setState(() {
        tabIndex = tabController.index;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          TabBar(
            controller: tabController,
            labelPadding: const EdgeInsets.all(8),
            tabAlignment: TabAlignment.start,
            isScrollable: true,
            tabs: widget.tabs
                .map(
                  (e) => Tab(
                    text: e,
                    height: 24,
                  ),
                )
                .toList(),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: IndexedStack(
              index: tabIndex,
              children: widget.tabs
                  .map(
                    (e) => LayoutBuilder(
                      builder: (context, constraints) => Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: List.generate(
                          10,
                          (index) => SizedBox(
                            width: (constraints.maxWidth - 16) / 2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "$index",
                                  style: Theme.of(context).textTheme.labelLarge,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "$e文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        "$e文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
