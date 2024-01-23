import 'package:flutter/material.dart';

class BookSingleCard extends StatefulWidget {
  const BookSingleCard({super.key});

  @override
  State<StatefulWidget> createState() => BookSingleCardState();
}

class BookSingleCardState extends State<BookSingleCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "你订阅过的作家有新书",
              style: Theme.of(context).textTheme.labelSmall,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字字文字文字文字字文字文字文字字文字文字文字字文字文字文字",
              maxLines: 2,
              style: Theme.of(context).textTheme.titleSmall,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Container(
                  width: 30,
                  alignment: Alignment.center,
                  child: const AspectRatio(
                    aspectRatio: 3 / 4,
                    child: Placeholder(),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "文字文字文字文字",
                        style: Theme.of(context).textTheme.labelLarge,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        "文字文字文字文字文字文字文",
                        style: Theme.of(context).textTheme.labelSmall,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "阅读",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
