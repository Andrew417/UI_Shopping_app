import 'package:flutter/material.dart';
import 'package:nectar_ui/compnents/button/bottom_bar.dart';
import 'package:nectar_ui/compnents/button/main_btn.dart';
import 'package:nectar_ui/core/utils/app_colors.dart';

class acceptedScreen extends StatelessWidget {
  const acceptedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(18),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/accepted.png'),
                SizedBox(height: 35),
                Text(
                  'Your Order has been \naccepted',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: AppColors.darkBlack,
                    fontSize: 30,
                    height: 1.2,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Your items has been placcd and is on \nit’s way to being processed',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: AppColors.grey,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 40),
                mainBtn(
                  text: 'Back To Home',
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => MainPage()),
                      (route) => false,
                    );
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
