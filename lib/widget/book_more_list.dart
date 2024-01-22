import 'package:flutter/material.dart';
import 'package:qidian/widget/book_list_tile.dart';

class BookMoreList extends StatefulWidget {
  final String title;
  const BookMoreList({super.key, this.title = "猜你喜欢"});

  @override
  State<StatefulWidget> createState() => BookMoreListState();
}

class BookMoreListState extends State<BookMoreList> {
  @override
  Widget build(BuildContext context) {
    return SliverMainAxisGroup(
      slivers: [
        SliverToBoxAdapter(
          child: Container(
            padding: const EdgeInsets.all(8),
            alignment: Alignment.center,
            child: Text(
              widget.title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ),
        SliverList.separated(
          itemCount: 20,
          itemBuilder: (context, index) => Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  child: Text(
                    "你可能感兴趣的书",
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ),
                const BookListTile(),
              ],
            ),
          ),
          separatorBuilder: (context, index) => const SizedBox(
            height: 4,
          ),
        ),
      ],
    );
  }
}
