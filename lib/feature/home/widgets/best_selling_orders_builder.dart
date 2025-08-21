import 'package:flutter/material.dart';
import 'package:nectar_ui/feature/home/model/order_model.dart';
import 'package:nectar_ui/feature/home/widgets/exclusive_orders_builder.dart'; // same UI widget reused

class BestSellingOrdersBuilder extends StatelessWidget {
  const BestSellingOrdersBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var product = bestSellingProducts[index];
          return ExclusiveOrdersUI(model: product);
        },
        separatorBuilder: (context, index) {
          return const SizedBox(width: 10);
        },
        itemCount: bestSellingProducts.length,
      ),
    );
  }
}
