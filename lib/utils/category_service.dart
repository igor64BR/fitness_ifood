import 'package:fitness_ifood/entities/category.dart';
import 'package:fitness_ifood/utils/base_service.dart';
import 'package:flutter/material.dart';

class CategoryService extends BaseService<Category> {
  CategoryService() {
    allItems = [
      Category(
        title: 'Salad',
        backgroundColor: const Color(0xff92A3FD),
        iconPath: "assets/icons/plate.svg",
      ),
      Category(
        title: 'Cake',
        backgroundColor: const Color(0xffC58BF2),
        iconPath: "assets/icons/pancakes.svg",
      ),
      Category(
        title: 'Pie',
        backgroundColor: const Color(0xff92A3FD),
        iconPath: "assets/icons/pie.svg",
      ),
      Category(
        title: 'In Nature',
        backgroundColor: const Color(0xffC58BF2),
        iconPath: "assets/icons/orange-snacks.svg",
      ),
    ];
  }
}
