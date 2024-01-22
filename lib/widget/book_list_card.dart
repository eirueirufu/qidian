import 'package:flutter/material.dart';
import 'package:qidian/widget/book_list_tile.dart';

class BookListCard extends StatefulWidget {
  final String title;
  const BookListCard({super.key, this.title = "卡牌标题"});

  @override
  State<StatefulWidget> createState() => BookListCardState();
}

class BookListCardState extends State<BookListCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            child: Text(
              widget.title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          ...List.generate(3, (index) => const BookListTile()),
        ],
      ),
    );
  }
}
