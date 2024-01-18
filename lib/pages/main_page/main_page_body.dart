import 'package:fitness_ifood/pages/main_page/app_search_bar.dart';
import 'package:flutter/material.dart';

import 'categories.dart';
import 'recomendations.dart';

class MainPageBody extends StatelessWidget {
  const MainPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    var bodyChildren = [
      const AppSearchBar(),
      _spacer,
      Categories(),
      _spacer,
      Recommendations(),
    ];

    return ListView.separated(
      itemBuilder: (_, index) => bodyChildren[index],
      separatorBuilder: (context, index) => _spacer,
      itemCount: bodyChildren.length,
    );
  }

  get _spacer => const SizedBox(height: 10);
}
