import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_ui/core/constants/app_assets.dart';
import 'package:nectar_ui/core/extenstions/navigation.dart';
import 'package:nectar_ui/core/utils/app_colors.dart';
import 'package:nectar_ui/feature/auth/page/location_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      pushwithReplacment(context, const LocationPage());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: SvgPicture.asset(
          AppAssets.logoSvg,
          fit: BoxFit.cover,
          width: 200,
        ),
      ),
    );
  }
}
