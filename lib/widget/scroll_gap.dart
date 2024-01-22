import 'package:flutter/material.dart';

class ScrollGap extends StatelessWidget {
  final double height;
  const ScrollGap({super.key, this.height = 8});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: height,
      ),
    );
  }
}
