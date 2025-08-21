import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_ui/compnents/inputs/search_bar.dart';
import 'package:nectar_ui/core/constants/app_assets.dart';
import 'package:nectar_ui/core/utils/app_colors.dart';
import 'package:nectar_ui/feature/home/widgets/best_selling_orders_builder.dart';
import 'package:nectar_ui/feature/home/widgets/exclusive_orders_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: SvgPicture.asset(
            AppAssets.logoSvg,
            width: 140,
            colorFilter: ColorFilter.mode(
              AppColors.primaryColor,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              searchBar(),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text(
                    'Exclusive Offers',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color: AppColors.darkBlack,
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See all',
                      style: TextStyle(color: AppColors.primaryColor),
                    ),
                  ),
                ],
              ),
              const ExclusiveOrdersBuilder(),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text(
                    'Best Selling',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color: AppColors.darkBlack,
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See all',
                      style: TextStyle(color: AppColors.primaryColor),
                    ),
                  ),
                ],
              ),
              const BestSellingOrdersBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
