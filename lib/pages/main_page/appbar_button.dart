import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarButton extends StatelessWidget {
  final SvgPicture svg;
  final Color _buttonColor = const Color(0xffF7F8F8);
  final double? width;

  const AppBarButton({
    super.key,
    this.width,
    required this.svg,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: width,
        margin: const EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: _buttonColor,
        ),
        child: svg,
      ),
    );
  }
}
