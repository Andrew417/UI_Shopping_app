import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_ui/compnents/button/main_btn.dart';
import 'package:nectar_ui/compnents/inputs/text_input.dart';
import 'package:nectar_ui/core/constants/app_assets.dart';
import 'package:nectar_ui/core/extenstions/navigation.dart';
import 'package:nectar_ui/core/utils/app_colors.dart';
import 'package:nectar_ui/feature/auth/page/login_page.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.chevron_left, size: 32),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [SvgPicture.asset(AppAssets.locationSvg)],
                ),
                SizedBox(height: 40),
                Text(
                  'Select Your Location',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 26,
                    color: AppColors.darkBlack,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Swithch on your location to stay in tune with what’s happening in your area',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: AppColors.grey,
                  ),
                ),
                SizedBox(height: 160),
                customTextFormField(labelText: 'Address'),
                SizedBox(height: 80),
                mainBtn(
                  text: 'Submit',
                  onPressed: () {
                    pushwithReplacment(context, const LoginPage());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
