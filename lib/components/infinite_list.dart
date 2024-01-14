import 'package:flutter/material.dart';

class InfiniteList extends StatelessWidget {
  final List<Widget> collection;
  final int width;
  final int height;
  final double xSpacing;
  final double ySpacing;

  const InfiniteList({
    super.key,
    required this.collection,
    this.height = 100,
    this.width = 100,
    this.xSpacing = 10,
    this.ySpacing = 10,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15),
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return SizedBox(height: ySpacing, width: xSpacing);
        },
        itemCount: collection.length,
        itemBuilder: (context, index) {
          return collection[index];
        },
      ),
    );
  }
}
