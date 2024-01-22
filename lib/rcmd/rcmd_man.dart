import 'package:flutter/material.dart';
import 'package:qidian/widget/book_grid_card.dart';
import 'package:qidian/widget/book_list_card.dart';
import 'package:qidian/widget/book_more_list.dart';
import 'package:qidian/widget/book_tab_card.dart';
import 'package:qidian/widget/scroll_banner.dart';
import 'package:qidian/widget/scroll_gap.dart';

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
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: ScrollBanner(),
            ),
            const ScrollGap(),
            const SliverToBoxAdapter(
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    ),
                  ],
                ),
              ),
            ),
            const ScrollGap(),
            const SliverToBoxAdapter(
              child: BookListCard(),
            ),
            const ScrollGap(),
            const SliverToBoxAdapter(
              child: BookGridCard(),
            ),
            const ScrollGap(),
            const SliverToBoxAdapter(
              child: BookListCard(),
            ),
            const ScrollGap(),
            SliverToBoxAdapter(
              child: BookTabCard(),
            ),
            const BookMoreList(),
          ],
        ),
      ),
    );
  }
}
