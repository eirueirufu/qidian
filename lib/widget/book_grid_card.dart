import 'package:flutter/material.dart';
import 'package:qidian/widget/book_grid_tile.dart';

class BookGridCard extends StatefulWidget {
  final String title;
  final int lines;
  const BookGridCard({super.key, this.title = "卡牌标题", this.lines = 1});

  @override
  State<StatefulWidget> createState() => BookGridCardState();
}

class BookGridCardState extends State<BookGridCard> {
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
          Container(
            padding: const EdgeInsets.all(8),
            child: LayoutBuilder(
              builder: (context, constraints) => Wrap(
                spacing: 8,
                runSpacing: 8,
                children: List.generate(
                  4 * widget.lines,
                  (index) => SizedBox(
                    width: (constraints.maxWidth - 4 * 8) / 4,
                    child: const BookGridTile(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
