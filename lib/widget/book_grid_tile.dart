import 'package:flutter/material.dart';
import 'package:qidian/book/book_details.dart';

class BookGridTile extends StatefulWidget {
  final String title;
  final String description;

  const BookGridTile({
    super.key,
    this.title = "文字文字文字文字文字",
    this.description = "文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字",
  });

  @override
  State<StatefulWidget> createState() => BookGridTileState();
}

class BookGridTileState extends State<BookGridTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const BookDetails(),
        ),
      ),
      child: Column(
        children: [
          const AspectRatio(
            aspectRatio: 3 / 4,
            child: Placeholder(),
          ),
          Text(
            widget.description,
            maxLines: 2,
            style: Theme.of(context).textTheme.labelLarge,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            widget.title,
            maxLines: 1,
            style: Theme.of(context).textTheme.labelMedium,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
