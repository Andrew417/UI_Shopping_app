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
    backgroundColor: Color(0xFFFFE5E5).withValues(alpha: 0.7),
    image: 'assets/images/fruits.png',
  ),
  Category(
    title: 'Cooking Oil\n& Ghee',
    backgroundColor: Color(0xFFFFF2CC).withValues(alpha: 0.7),
    image: 'assets/images/oil.png',
  ),
  Category(
    title: 'Meat & Fish',
    backgroundColor: Color(0xFFD5E8D4).withValues(alpha: 0.7),
    image: 'assets/images/meat.png',
  ),
  Category(
    title: 'Bakery & Snacks',
    backgroundColor: Color(0xFFFFD9B3).withValues(alpha: 0.7),
    image: 'assets/images/bakery.png',
  ),
  Category(
    title: 'Dairy & Eggs',
    backgroundColor: Color(0xFFE0EBF5).withValues(alpha: 0.7),
    image: 'assets/images/eggs.png',
  ),
  Category(
    title: 'Beverages',
    backgroundColor: Color(0xFFE6CCFF).withValues(alpha: 0.7),
    image: 'assets/images/bevrages.png',
  ),
  Category(
    title: 'Bakery & Snacks',
    backgroundColor: Color(0xFFFFD9B3).withValues(alpha: 0.7),
    image: 'assets/images/bakery.png',
  ),
  Category(
    title: 'Cooking Oil\n& Ghee',
    backgroundColor: Color(0xFFFFF2CC).withValues(alpha: 0.7),
    image: 'assets/images/oil.png',
  ),
];
