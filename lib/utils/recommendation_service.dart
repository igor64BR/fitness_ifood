import 'package:fitness_ifood/entities/recommendation.dart';
import 'package:fitness_ifood/utils/base_service.dart';
import 'package:flutter/cupertino.dart';

class RecommendationService extends BaseService<Recommendation> {
  RecommendationService() {
    allItems = [
      Recommendation(
        title: 'Honey Pancake',
        subtitle: "Easy | 30mins | 180kCal",
        backgroundColor: const Color(0xff92A3FD),
        iconPath: "assets/icons/honey-pancakes.svg",
      ),
      Recommendation(
        title: 'Canal Bread',
        subtitle: "Easy | 20mins | 200kCal",
        backgroundColor: const Color(0xffC58BF2),
        iconPath: "assets/icons/canai-bread.svg",
      ),
      Recommendation(
        title: 'Pie',
        subtitle: "Medium | 130mins | 380kCal",
        backgroundColor: const Color(0xff92A3FD),
        iconPath: "assets/icons/honey-pancakes.svg",
      ),
      Recommendation(
        title: 'Orange Juice',
        subtitle: "Very Easy | 8mins | 30kCal",
        backgroundColor: const Color(0xffC58BF2),
        iconPath: "assets/icons/canai-bread.svg",
      ),
    ];
  }
}
