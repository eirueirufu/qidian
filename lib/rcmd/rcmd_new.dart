import 'package:flutter/material.dart';
import 'package:qidian/widget/book_list_card.dart';
import 'package:qidian/widget/book_more_list.dart';
import 'package:qidian/widget/book_single_card.dart';
import 'package:qidian/widget/scroll_gap.dart';

class RcmdNew extends StatelessWidget {
  const RcmdNew({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: CustomScrollView(
        slivers: [
          SliverGrid.count(
            crossAxisCount: 2,
            childAspectRatio: 4 / 3,
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "新书种草 >",
                        style: Theme.of(context).textTheme.titleMedium,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                            5,
                            (index) => index % 2 == 0
                                ? Flexible(
                                    child: Column(
                                      children: [
                                        const Expanded(
                                          child: AspectRatio(
                                            aspectRatio: 3 / 4,
                                            child: Placeholder(),
                                          ),
                                        ),
                                        Text(
                                          "文字文字文字文字",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  )
                                : const SizedBox(
                                    width: 8,
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: List.generate(
                  2,
                  (index) => Flexible(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "三江好书",
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    "最佳男生新书",
                                    style:
                                        Theme.of(context).textTheme.labelMedium,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                            const Flexible(
                              flex: 1,
                              child: AspectRatio(
                                aspectRatio: 3 / 4,
                                child: Placeholder(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const ScrollGap(),
          const SliverToBoxAdapter(
            child: BookListCard(),
          ),
          const ScrollGap(),
          const SliverToBoxAdapter(
            child: BookSingleCard(),
          ),
          const ScrollGap(),
          const SliverToBoxAdapter(
            child: BookListCard(),
          ),
          const ScrollGap(),
          const SliverToBoxAdapter(
            child: BookListCard(),
          ),
          const BookMoreList(),
        ],
      ),
    );
  }
}
