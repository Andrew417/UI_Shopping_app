import 'package:flutter/material.dart';
import 'package:nectar_ui/feature/home/model/order_model.dart';
import 'package:nectar_ui/feature/home/widgets/exclusive_orders.dart';

class ExclusiveOrdersBuilder extends StatelessWidget {
  const ExclusiveOrdersBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var product = products[index];
          return ExclusiveOrders(model: product);
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: 10);
        },
        itemCount: products.length,
      ),
    );
  }
}
