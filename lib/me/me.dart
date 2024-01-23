import 'package:flutter/material.dart';
import 'package:qidian/widget/scroll_gap.dart';

class Me extends StatefulWidget {
  const Me({super.key});

  @override
  State<StatefulWidget> createState() => MeState();
}

class MeState extends State<Me> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.settings_outlined),
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
                          Text(
                            "用户名称",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Wrap(
                            children: List.generate(
                              5,
                              (index) => index % 2 == 1
                                  ? const SizedBox(
                                      width: 4,
                                    )
                                  : Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 4,
                                      ),
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
            const ScrollGap(),
            SliverToBoxAdapter(
              child: Card(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "我的账户",
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          Text(
                            "更多 >",
                            style: Theme.of(context).textTheme.labelMedium,
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
                                  : Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "xxx",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall,
                                        ),
                                        Text(
                                          "xxx点",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelSmall,
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
                            child: Text(
                              "充值",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const ScrollGap(),
            SliverToBoxAdapter(
              child: Card(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: LayoutBuilder(
                    builder: (context, constraints) => Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: List.generate(
                        8,
                        (index) => SizedBox(
                          width: (constraints.maxWidth - 8 * 4) / 4,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [Icon(Icons.watch_off), Text("文字")],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const ScrollGap(),
            SliverToBoxAdapter(
              child: Card(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: List.generate(
                      13,
                      (index) => index % 2 == 1
                          ? const Divider()
                          : Container(
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
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
