import 'package:flutter/material.dart';

class BookHrzListCard extends StatefulWidget {
  final String title;
  const BookHrzListCard({super.key, this.title = "横向滚动"});

  @override
  State<StatefulWidget> createState() => BookHrzListCardState();
}

class BookHrzListCardState extends State<BookHrzListCard> {
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
          SizedBox(
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Column(
                children: List.generate(
                  3,
                  (index) => const SizedBox(
                    width: 260,
                    height: 80,
                    child: ListTile(
                      leading: LimitedBox(
                        child: AspectRatio(
                          aspectRatio: 3 / 4,
                          child: Placeholder(),
                        ),
                      ),
                      title: Text(
                        "文字文字文字文字文字",
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: Text(
                        "文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
              ),
              itemCount: 3,
            ),
          ),
        ],
      ),
    );
  }
}
