import 'package:flutter/material.dart';

class RcmdNew extends StatelessWidget {
  const RcmdNew({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      color: Colors.black12,
      child: CustomScrollView(
        slivers: [
          SliverGrid.count(
            crossAxisSpacing: 8,
            crossAxisCount: 2,
            childAspectRatio: 4 / 3,
            children: [
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "新书种草 >",
                      style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
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
                                      Expanded(
                                        child: AspectRatio(
                                          aspectRatio: 3 / 4,
                                          child: Placeholder(),
                                        ),
                                      ),
                                      Text(
                                        "文字文字文字文字",
                                        style: TextStyle(
                                          overflow: TextOverflow.ellipsis,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              : SizedBox(
                                  width: 8,
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: List.generate(
                  3,
                  (index) => index % 2 == 1
                      ? SizedBox(
                          height: 8,
                        )
                      : Expanded(
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  flex: 3,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "三江好书",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "最佳男生新书",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black54),
                                      )
                                    ],
                                  ),
                                ),
                                Flexible(
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
            ],
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DecoratedSliver(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            sliver: SliverMainAxisGroup(
              slivers: [
                SliverAppBar(
                  backgroundColor: Colors.transparent,
                  title: Text(
                    "精品新书",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SliverList.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: AspectRatio(
                        aspectRatio: 3 / 4,
                        child: Placeholder(),
                      ),
                      title: Text(
                        "文字文字文字文字文字",
                        style: TextStyle(fontSize: 16),
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "文字文字文字文字文字",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black54,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            "文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black54,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DecoratedSliver(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            sliver: SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.black12,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        child: Text(
                          "你订阅过的作家有新书",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字字文字文字文字字文字文字文字字文字文字文字字文字文字文字",
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 14,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 30,
                          alignment: Alignment.center,
                          child: AspectRatio(
                            aspectRatio: 3 / 4,
                            child: Placeholder(),
                          ),
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
                                "文字文字文字文字",
                                style: TextStyle(
                                  fontSize: 14,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Text(
                                "文字文字文字文字文字文字文",
                                style: TextStyle(
                                  fontSize: 12,
                                  overflow: TextOverflow.ellipsis,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "阅读",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DecoratedSliver(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            sliver: SliverMainAxisGroup(
              slivers: [
                SliverAppBar(
                  backgroundColor: Colors.transparent,
                  title: Text(
                    "新书入库",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SliverList.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: AspectRatio(
                        aspectRatio: 3 / 4,
                        child: Placeholder(),
                      ),
                      title: Text(
                        "文字文字文字文字文字",
                        style: TextStyle(fontSize: 16),
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "文字文字文字文字文字",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black54,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            "文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black54,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DecoratedSliver(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            sliver: SliverMainAxisGroup(
              slivers: [
                SliverAppBar(
                  backgroundColor: Colors.transparent,
                  title: Text(
                    "新书上架",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SliverList.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: AspectRatio(
                        aspectRatio: 3 / 4,
                        child: Placeholder(),
                      ),
                      title: Text(
                        "文字文字文字文字文字",
                        style: TextStyle(fontSize: 16),
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "文字文字文字文字文字",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black54,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            "文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black54,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(8),
              alignment: Alignment.center,
              child: Text(
                "个性化推荐",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SliverList.separated(
            itemCount: 20,
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  ListTile(
                    leading:
                        AspectRatio(aspectRatio: 3 / 4, child: Placeholder()),
                    title: Text(
                      "文字文字文字文字文字",
                      style: TextStyle(fontSize: 16),
                      overflow: TextOverflow.ellipsis,
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "文字文字文字文字文字",
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字",
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            separatorBuilder: (context, index) => SizedBox(
              height: 8,
            ),
          ),
        ],
      ),
    );
  }
}
