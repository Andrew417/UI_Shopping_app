import 'package:flutter/material.dart';
import 'package:nectar_ui/core/utils/app_colors.dart';

class mainBtn extends StatelessWidget {
  const mainBtn({
    super.key,
    required this.text,
    required this.onPressed,
    this.height = 60,
    this.width,
    this.bgColor,
  });
  final String text;
  final Function() onPressed;
  final double height;
  final double? width;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor ?? AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(19),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
