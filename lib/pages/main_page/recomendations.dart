import 'package:fitness_ifood/components/infinite_list.dart';
import 'package:fitness_ifood/components/item_card.dart';
import 'package:fitness_ifood/entities/recommendation.dart';
import 'package:flutter/material.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({super.key});

  @override
  Widget build(BuildContext context) {
    var recommendations = <Recommendation>[];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Text(
            "Recommendation for Diet",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
        ),
        InfiniteList(collection: [
          for (var recommendation in recommendations)
            ItemCard(item: recommendation),
        ])
      ],
    );
  }
}
