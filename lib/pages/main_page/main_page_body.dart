import 'package:fitness_ifood/pages/main_page/app_search_bar.dart';
import 'package:flutter/material.dart';

import 'categories.dart';
import 'recomendations.dart';

class MainPageBody extends StatelessWidget {
  const MainPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppSearchBar(),
        _spacer,
        Categories(),
        _spacer,
        Recommendations(),
      ],
    );
  }

  get _spacer => const SizedBox(height: 10);
}
