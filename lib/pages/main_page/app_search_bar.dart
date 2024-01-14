import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'app_search_bar_icon.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0xff1d1617).withOpacity(.11),
            blurRadius: 40,
            spreadRadius: 0,
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.all(15),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                borderSide: BorderSide.none),
            hintText: 'Search Pancake',
            hintStyle: const TextStyle(color: Color(0xffDDDADA), fontSize: 14),
            prefixIcon: AppSearchBarIcon(
              icon: SvgPicture.asset('assets/icons/Search.svg'),
            ),
            suffixIcon: AppSearchBarIcon(
              icon: IntrinsicWidth(
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const VerticalDivider(
                        color: Colors.black,
                        thickness: .1,
                      ),
                      SvgPicture.asset('assets/icons/Filter.svg'),
                    ],
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
