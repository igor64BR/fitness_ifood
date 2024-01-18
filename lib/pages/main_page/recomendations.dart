import 'package:fitness_ifood/components/infinite_list.dart';
import 'package:fitness_ifood/components/item_card.dart';
import 'package:fitness_ifood/utils/recommendation_service.dart';
import 'package:flutter/material.dart';

class Recommendations extends StatelessWidget {
  Recommendations({super.key});

  final _recommendationService = RecommendationService();

  @override
  Widget build(BuildContext context) {
    var recommendations = _recommendationService.getAll();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Recommendation\nfor Diet",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        InfiniteList(
          listHeight: 240,
          collection: [
            for (var recommendation in recommendations)
              ItemCard(
                item: recommendation,
                width: 210,
                showCircleBg: false,
                additionalChildren: [_viewButton],
              ),
          ],
        )
      ],
    );
  }

  get _viewButton {
    return Container(
      alignment: Alignment.center,
      width: 120,
      height: 40,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.lightBlueAccent,
            Colors.blueGrey,
          ],
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: const Text(
        "View",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
