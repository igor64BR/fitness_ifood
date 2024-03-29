import 'package:flutter/material.dart';

abstract class BaseEntity<T extends BaseEntity<T>> {
  // Counts the number of items already created. This helps to set unique ids
  //  for children entities
  static int _count = 0;

  late int _id;

  get id => _id;

  final String title;
  final String? subtitle;
  final String iconPath;
  final Color backgroundColor;

  BaseEntity({
    this.subtitle,
    required this.title,
    required this.iconPath,
    required this.backgroundColor,
  }) {
    _id = _count++;
  }
}
