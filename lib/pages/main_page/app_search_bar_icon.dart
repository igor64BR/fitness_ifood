import 'package:flutter/material.dart';

class AppSearchBarIcon extends StatelessWidget {
  final Widget icon;

  const AppSearchBarIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: icon,
    );
  }
}
