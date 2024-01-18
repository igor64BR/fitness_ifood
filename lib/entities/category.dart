import 'package:fitness_ifood/entities/base_entity.dart';

class Category extends BaseEntity<Category> {
  Category({
    required super.title,
    required super.backgroundColor,
    required super.iconPath,
  });
}
