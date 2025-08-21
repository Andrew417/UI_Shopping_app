import 'package:flutter/material.dart';
import 'package:nectar_ui/core/extenstions/navigation.dart';
import 'package:nectar_ui/core/product%20details/product_details.dart';
import 'package:nectar_ui/core/utils/app_colors.dart';
import 'package:nectar_ui/feature/home/model/order_model.dart';

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
          return ExclusiveOrdersUI(model: product);
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: 10);
        },
        itemCount: products.length,
      ),
    );
  }
}

class ExclusiveOrdersUI extends StatelessWidget {
  const ExclusiveOrdersUI({super.key, required this.model});

  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushTo(context, ProductDetails(model: model));
      },
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.grey),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: Image.asset(model.image, width: 150)),
              SizedBox(height: 15),
              Text(
                model.name,
                style: TextStyle(
                  color: AppColors.darkBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 5),
              Text(
                model.weight,
                style: TextStyle(
                  color: AppColors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      '\$${model.price}',
                      style: TextStyle(
                        color: AppColors.darkBlack,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    mini: true,
                    elevation: 0,
                    backgroundColor: AppColors.primaryColor,
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
