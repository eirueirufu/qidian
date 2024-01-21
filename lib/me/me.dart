import 'package:flutter/material.dart';

class Me extends StatefulWidget {
  const Me({super.key});

  @override
  State<StatefulWidget> createState() => MeState();
}

class MeState extends State<Me> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        // surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.settings_outlined),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mode_night_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_outlined),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    const CircleAvatar(
                      child: Icon(
                        Icons.account_circle_outlined,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "用户名称",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Wrap(
                            children: List.generate(
                              3,
                              (index) => Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.black12,
                                ),
                                child: const Text("tag"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Text(">"),
                  ],
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 8),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "我的账户",
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          "更多 >",
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: List.generate(
                            7,
                            (index) => index % 2 == 1
                                ? const SizedBox(
                                    width: 16,
                                  )
                                : const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "xxx",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "xxx点",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w100,
                                        ),
                                      ),
                                    ],
                                  ),
                          ),
                        ),
                        TextButton(
                          style: ButtonStyle(
                            minimumSize:
                                MaterialStateProperty.all(const Size(0, 0)),
                            padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(
                                vertical: 8,
                                horizontal: 12,
                              ),
                            ),
                            backgroundColor:
                                const MaterialStatePropertyAll(Colors.red),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "充值",
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 8),
            ),
            DecoratedSliver(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              sliver: SliverGrid.count(
                crossAxisCount: 4,
                children: List.generate(
                  8,
                  (index) => const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [Icon(Icons.watch_off), Text("文字")],
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 8),
            ),
            DecoratedSliver(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              sliver: SliverPadding(
                padding: const EdgeInsets.all(8),
                sliver: SliverList.separated(
                  itemCount: 8,
                  itemBuilder: (context, index) => Container(
                    padding: const EdgeInsets.all(4),
                    child: const Row(
                      children: [
                        Icon(Icons.question_answer),
                        SizedBox(
                          width: 8,
                        ),
                        Text("文字文字"),
                      ],
                    ),
                  ),
                  separatorBuilder: (context, index) => const Divider(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
