import 'package:fitness_ifood/entities/base_entity.dart';

class Recommendation extends BaseEntity<Recommendation> {
  Recommendation({
    required super.title,
    required super.subtitle,
    required super.iconPath,
    required super.backgroundColor,
  });
}
