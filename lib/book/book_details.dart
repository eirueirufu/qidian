import 'package:flutter/material.dart';

class BookDetails extends StatefulWidget {
  const BookDetails({super.key});

  @override
  State<BookDetails> createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
  String? data;
  Future<String> fetchData() async {
    if (data != null) {
      return data!;
    }
    await Future.delayed(const Duration(seconds: 1));
    data = "";
    return data!;
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: FutureBuilder(
        future: fetchData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text('错误: ${snapshot.error} ');
          } else if (snapshot.hasData) {
            return _buildDetails(textTheme, colorTheme);
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  CustomScrollView _buildDetails(TextTheme textTheme, ColorScheme colorTheme) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      slivers: [
        SliverAppBar(
          stretch: true,
          flexibleSpace: const Placeholder(),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(116),
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  const SizedBox(
                    height: 100,
                    child: AspectRatio(
                      aspectRatio: 9 / 16,
                      child: Placeholder(),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "文字文字文字文字文字",
                        style: textTheme.titleLarge,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "文字文字文",
                        style: textTheme.bodyMedium,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        "文字文字文字文字文字",
                        style: textTheme.bodySmall,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Chip(
                        label: Text(
                          "荣誉滚动",
                          style: textTheme.labelMedium,
                        ),
                      ),
                      Chip(
                        label: Text(
                          "字数",
                          style: textTheme.labelMedium,
                        ),
                      ),
                      Chip(
                        label: Text(
                          "月票",
                          style: textTheme.labelMedium,
                        ),
                      ),
                      Chip(
                        label: Text(
                          "出圈等级",
                          style: textTheme.labelMedium,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    height: 40,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: colorTheme.onPrimary,
                        ),
                        child: Text(
                          "标签",
                          textAlign: TextAlign.center,
                          style: textTheme.labelMedium,
                        ),
                      ),
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 8),
                      itemCount: 12,
                    ),
                  ),
                  Text(
                    "文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字",
                    maxLines: 4,
                    style: textTheme.bodySmall,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    height: 100,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Card(
                        color: colorTheme.onPrimary,
                        child: const AspectRatio(
                          aspectRatio: 16 / 9,
                          child: Placeholder(),
                        ),
                      ),
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 8),
                      itemCount: 10,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "目录",
                          style: textTheme.bodyLarge,
                        ),
                      ),
                      const Text("连载至x - x小时前更新 >"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "书友圈",
                          style: textTheme.bodyMedium,
                        ),
                      ),
                      Text(
                        "讨论贴 x",
                        style: textTheme.bodySmall,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Card(
                        color: colorTheme.onPrimary,
                        child: const AspectRatio(
                          aspectRatio: 16 / 9,
                          child: Placeholder(),
                        ),
                      ),
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 8),
                      itemCount: 10,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Card(
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "作家名",
                    style: textTheme.titleMedium,
                  ),
                  Text(
                    "个人描述个人描述个人描述个人描述个人描述个人描述个人描述个人描述个人描述个人描述个人描述个人描述个人描述个人描述个人描述",
                    style: textTheme.labelMedium,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Card(
            child: Row(
              children: List.generate(
                2,
                (index) => Flexible(
                  child: Container(
                    height: 46,
                    padding: const EdgeInsets.all(8),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("书友榜"),
                        Icon(Icons.account_box_outlined),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "本书看点",
                          style: textTheme.bodyMedium,
                        ),
                      ),
                      Text(
                        "更多 >",
                        style: textTheme.bodySmall,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Card(
                        color: colorTheme.onPrimary,
                        child: const AspectRatio(
                          aspectRatio: 16 / 9,
                          child: Placeholder(),
                        ),
                      ),
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 8),
                      itemCount: 10,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
