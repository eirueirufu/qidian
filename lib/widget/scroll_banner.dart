import 'dart:async';

import 'package:flutter/material.dart';

class ScrollBanner extends StatefulWidget {
  final int num;
  const ScrollBanner({super.key, this.num = 3});

  @override
  State<StatefulWidget> createState() => ScrollBannerState();
}

class ScrollBannerState extends State<ScrollBanner> {
  late final PageController pageController;
  int nowPage = 0;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: nowPage);
    timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      nowPage = (nowPage + 1) % widget.num;
      pageController.animateToPage(
        nowPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Card(
        child: SizedBox(
          width: constraints.maxWidth,
          child: AspectRatio(
            aspectRatio: 16 / 5,
            child: PageView(
              controller: pageController,
              children:
                  List.generate(widget.num, (index) => const Placeholder()),
            ),
          ),
        ),
      ),
    );
  }
}
