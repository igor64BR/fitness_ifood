import 'package:fitness_ifood/entities/base_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemCard extends StatelessWidget {
  final BaseEntity item;
  final double height;
  final double width;
  final bool showCircleBg;

  final List<Widget> _displayedWidgets = [];

  final List<Widget>? additionalChildren;

  ItemCard({
    super.key,
    required this.item,
    this.width = 100,
    this.height = 100,
    this.showCircleBg = true,
    this.additionalChildren,
  }) {
    var image = showCircleBg
        ? Container(
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: SvgPicture.asset(item.iconPath),
          )
        : SvgPicture.asset(item.iconPath);

    var text = item.subtitle == null
        ? Text(item.title)
        : Column(
            children: [
              Text(item.title),
              Text(
                item.subtitle!,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black.withOpacity(.55),
                ),
              ),
            ],
          );

    _displayedWidgets.addAll([
      image,
      text,
    ]);

    if (additionalChildren != null) {
      _displayedWidgets.add(Column(
        children: additionalChildren!,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: item.backgroundColor.withOpacity(.3),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _displayedWidgets,
      ),
    );
  }
}
