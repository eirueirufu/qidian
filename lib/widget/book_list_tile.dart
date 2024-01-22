import 'package:flutter/material.dart';

class BookListTile extends StatefulWidget {
  final String title;
  final String description;

  const BookListTile({
    super.key,
    this.title = "文字文字文字文字文字",
    this.description = "文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字",
  });

  @override
  State<StatefulWidget> createState() => BookListTileState();
}

class BookListTileState extends State<BookListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const AspectRatio(
        aspectRatio: 3 / 4,
        child: Placeholder(),
      ),
      title: Text(
        widget.title,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        widget.description,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
