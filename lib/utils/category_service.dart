import 'package:fitness_ifood/entities/category.dart';
import 'package:flutter/material.dart';

class CategoryService {
  final List<Category> _allCategories = [
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

  List<Category> getAll() => _allCategories;

  Category getByIndex(int index) => _allCategories[index];

  void create(Category category) => _allCategories.add(category);

  void update(Category category) {
    var index =
        _allCategories.indexWhere((element) => element.id == category.id);

    _allCategories[index] = category;
  }

  void delete(Category category) {
    var index =
        _allCategories.indexWhere((element) => element.id == category.id);

    _allCategories.removeAt(index);
  }
}
