import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_ui/compnents/button/main_btn.dart';
import 'package:nectar_ui/core/constants/app_assets.dart';
import 'package:nectar_ui/core/extenstions/navigation.dart';
import 'package:nectar_ui/feature/auth/page/location_page.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/welcome.png',
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 80,
            left: 30,
            right: 30,
            child: Column(
              children: [
                SvgPicture.asset(
                  AppAssets.carrotSvg,
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                ),

                SizedBox(height: 35),
                Text(
                  'Welcome\n To Our Store',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 48,
                    height: 1.2,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Get your groceries in as fast as one hour',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 40),
                mainBtn(
                  text: 'Get started',
                  onPressed: () {
                    pushwithReplacment(context, LocationPage());
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
