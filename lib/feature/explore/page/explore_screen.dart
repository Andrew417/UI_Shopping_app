import 'package:flutter/material.dart';
import 'package:nectar_ui/compnents/button/bottom_bar.dart';
import 'package:nectar_ui/compnents/inputs/search_bar.dart';
import 'package:nectar_ui/core/utils/app_colors.dart';
import 'package:nectar_ui/feature/explore/widgets/categories_builder.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Title(
          color: AppColors.darkBlack,
          child: const Text(
            'Find Products',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              searchBar(),
              const SizedBox(height: 20),
              CategoriesBuilder(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomBar(explore: true),
    );
  }
}
