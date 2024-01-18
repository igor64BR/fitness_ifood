import 'package:fitness_ifood/entities/base_entity.dart';
import 'package:flutter/cupertino.dart';

abstract class BaseService<T extends BaseEntity<T>> {
  BaseService();

  @protected
  late List<T> allItems;

  List<T> getAll() => allItems;

  T getByIndex(int index) => allItems[index];

  void create(T item) => allItems.add(item);

  void update(T item) {
    var index = allItems.indexWhere((element) => element.id == item.id);

    allItems[index] = item;
  }

  void delete(T item) {
    var index = allItems.indexWhere((element) => element.id == item.id);

    allItems.removeAt(index);
  }
}
