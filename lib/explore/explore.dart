import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  final listLength = 8;
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textScheme = Theme.of(context).textTheme;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: TabBar(
          tabs: [
            Tab(
              text: "关注",
            ),
            Tab(
              text: "广场",
            ),
          ],
        ),
        body: TabBarView(children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12),
            child: ListView.separated(
                itemBuilder: (context, index) =>
                    index == 0 || index == listLength - 1
                        ? Container()
                        : AuthorFollow(),
                separatorBuilder: (context, index) => SizedBox(height: 8),
                itemCount: listLength),
          ),
          Container()
        ]),
      ),
    );
  }
}

class AuthorFollow extends StatelessWidget {
  const AuthorFollow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textScheme = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: colorScheme.primaryContainer,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "热门关注",
            style: textScheme.titleSmall,
          ),
          Divider(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                child: Icon(Icons.account_circle),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "文字",
                      style: textScheme.bodyMedium,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      "文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字",
                      style: textScheme.bodySmall,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "关注",
                  style: textScheme.bodyMedium,
                ),
              ),
            ],
          ),
          Container(
            height: 84,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: colorScheme.onPrimary,
            ),
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                AspectRatio(
                  aspectRatio: 3 / 4,
                  child: Placeholder(),
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "文字",
                        style: textScheme.bodyMedium,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字",
                        style: textScheme.bodySmall,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
