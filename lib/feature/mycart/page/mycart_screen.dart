import 'package:flutter/material.dart';
import 'package:nectar_ui/compnents/button/main_btn.dart';
import 'package:nectar_ui/core/utils/app_colors.dart';
import 'package:nectar_ui/feature/mycart/widgets/my_cart_builder.dart';

class MycartScreen extends StatelessWidget {
  const MycartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'My Cart',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: AppColors.darkBlack,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(color: Colors.grey.shade300, height: 1),
        ),
      ),
      body: Stack(
        children: [
          MyCartBuilder(),
          Positioned(
            left: 16,
            right: 16,
            bottom: 16,
            child: mainBtn(text: "Go to Checkout", onPressed: () {}),
          ),
        ],
      ),
    );
  }
}
