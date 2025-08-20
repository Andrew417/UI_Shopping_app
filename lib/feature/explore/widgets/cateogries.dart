import 'package:flutter/material.dart';

class Category {
  final String title;
  final Color backgroundColor;
  final String image;

  const Category({
    required this.title,
    required this.backgroundColor,
    required this.image,
  });
}

List<Category> categories = [
  Category(
    title: 'Fresh Fruits\n& Vegetables',
    backgroundColor: Color(0xFFFFE5E5).withValues(alpha: 0.8),
    image: 'assets/images/fruit_and_vegitables.svg',
  ),
  Category(
    title: 'Cooking Oil\n& Ghee',
    backgroundColor: Color(0xFFFFF2CC).withValues(alpha: 0.8),
    image: 'assets/images/oil.svg',
  ),
  Category(
    title: 'Meat & Fish',
    backgroundColor: Color(0xFFD5E8D4).withValues(alpha: 0.8),
    image: 'assets/images/meat_&_fish.svg',
  ),
  Category(
    title: 'Bakery & Snacks',
    backgroundColor: Color(0xFFFFD9B3).withValues(alpha: 0.8),
    image: 'assets/images/bakey_&_snacks.svg',
  ),
  Category(
    title: 'Dairy & Eggs',
    backgroundColor: Color(0xFFE0EBF5).withValues(alpha: 0.8),
    image: 'assets/images/eggs.svg',
  ),
  Category(
    title: 'Beverages',
    backgroundColor: Color(0xFFE6CCFF).withValues(alpha: 0.8),
    image: 'assets/images/beverages.svg',
  ),
  Category(
    title: 'Cooking Oil\n& Ghee',
    backgroundColor: Color(0xFFFFF2CC).withValues(alpha: 0.8),
    image: 'assets/images/oil.svg',
  ),
  Category(
    title: 'Meat & Fish',
    backgroundColor: Color(0xFFD5E8D4).withValues(alpha: 0.8),
    image: 'assets/images/meat_&_fish.svg',
  ),
];
