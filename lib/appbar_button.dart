import 'package:flutter/cupertino.dart';

class AppBarButton extends StatelessWidget {
  final Icon icon;
  final Color _buttonColor = const Color(0xffd4d4dc);

  const AppBarButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: _buttonColor,
      ),
      child: icon,
    );
  }
}