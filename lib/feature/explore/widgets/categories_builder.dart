import 'package:flutter/material.dart';
import 'package:nectar_ui/feature/explore/widgets/cateogries.dart';

class CategoriesBuilder extends StatelessWidget {
  const CategoriesBuilder({super.key});

  Color _getDarkerColor(Color color) {
    return Color.fromARGB(
      color.alpha,
      (color.red * 0.8).toInt(),
      (color.green * 0.8).toInt(),
      (color.blue * 0.8).toInt(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        var category = categories[index];
        return Container(
          decoration: BoxDecoration(
            color: category.backgroundColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: _getDarkerColor(category.backgroundColor),
              width: 2,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(category.image, height: 70),
              const SizedBox(height: 8),
              Text(
                category.title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
