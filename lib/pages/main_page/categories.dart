import 'package:fitness_ifood/utils/category_service.dart';
import 'package:flutter/material.dart';

import '../../components/infinite_list.dart';
import '../../components/item_card.dart';

class Categories extends StatelessWidget {
  final _categoryService = CategoryService();

  Categories({super.key});

  @override
  Widget build(BuildContext context) {
    var categories = _categoryService.getAll();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Text(
            "Category",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
        ),
        const SizedBox(height: 10),
        InfiniteList(collection: [
          for (var category in categories) ItemCard(item: category)
        ]),
      ],
    );
  }
}
