import 'package:flutter/material.dart';
import 'package:qidian/widget/book_grid_card.dart';
import 'package:qidian/widget/book_hrz_list_card.dart';
import 'package:qidian/widget/book_list_card.dart';
import 'package:qidian/widget/book_more_list.dart';
import 'package:qidian/widget/scroll_gap.dart';

class Listen extends StatefulWidget {
  const Listen({super.key});

  @override
  State<StatefulWidget> createState() => ListenState();
}

class ListenState extends State<Listen> with SingleTickerProviderStateMixin {
  late final TabController tabController;
  final List<String> tabs = [
    "推荐",
    "玄幻",
    "悬疑",
    "历史",
    "都市",
    "古言",
    "现言",
    "科幻",
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: const SearchBar(
          shape: MaterialStatePropertyAll(LinearBorder()),
          leading: Icon(Icons.search),
        ),
        bottom: TabBar(
          isScrollable: true,
          tabAlignment: TabAlignment.start,
          controller: tabController,
          tabs: tabs
              .map(
                (e) => Tab(
                  text: e,
                ),
              )
              .toList(),
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: List.generate(
          tabs.length,
          (index) => const CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: AspectRatio(
                  aspectRatio: 16 / 7,
                  child: Placeholder(),
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                sliver: SliverToBoxAdapter(
                  child: BookListCard(),
                ),
              ),
              ScrollGap(),
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                sliver: SliverToBoxAdapter(
                  child: BookGridCard(
                    lines: 2,
                  ),
                ),
              ),
              ScrollGap(),
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                sliver: SliverToBoxAdapter(
                  child: BookListCard(),
                ),
              ),
              ScrollGap(),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Card(
                    child: AspectRatio(
                      aspectRatio: 16 / 7,
                      child: Placeholder(),
                    ),
                  ),
                ),
              ),
              ScrollGap(),
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                sliver: SliverToBoxAdapter(
                  child: BookGridCard(
                    lines: 2,
                  ),
                ),
              ),
              ScrollGap(),
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                sliver: SliverToBoxAdapter(
                  child: BookHrzListCard(),
                ),
              ),
              BookMoreList(),
            ],
          ),
        ),
      ),
    );
  }
}
