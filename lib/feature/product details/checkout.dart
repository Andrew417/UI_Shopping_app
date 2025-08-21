import 'package:flutter/material.dart';
import 'package:nectar_ui/compnents/button/main_btn.dart';
import 'package:nectar_ui/core/utils/app_colors.dart';
import 'package:nectar_ui/feature/home/model/order_model.dart';
import 'package:nectar_ui/feature/product%20details/order_accepted.dart';

class checkout extends StatefulWidget {
  const checkout({super.key, required this.model});
  final List<ProductModel> model;
  @override
  State<checkout> createState() => _modalbottomsheetState();
}

class _modalbottomsheetState extends State<checkout> {
  final double total = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(25, 30, 25, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Checkout',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: AppColors.darkBlack,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.close),
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Delivery',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.grey,
                ),
              ),
              SizedBox(width: 139),
              Text(
                'Select Method',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.darkBlack,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward_ios_rounded),
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Payment',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.grey,
                ),
              ),
              SizedBox(width: 189),
              Icon(Icons.credit_card),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward_ios_rounded),
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Promo Code',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.grey,
                ),
              ),
              SizedBox(width: 109),
              Text(
                'Pick Discount',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.darkBlack,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward_ios_rounded),
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Cost',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.grey,
                ),
              ),
              SizedBox(width: 177),
              Text(
                '\$${getCartTotal().toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.darkBlack,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward_ios_rounded),
              ),
            ],
          ),
          Divider(),
          SizedBox(height: 20),
          RichText(
            text: TextSpan(
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: AppColors.grey,
              ),
              children: [
                TextSpan(
                  text: ('By continuing you agree to our '),
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.grey,
                  ),
                ),
                TextSpan(
                  text: 'Terms',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.darkBlack,
                  ),
                ),
                TextSpan(
                  text: (' and '),
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.grey,
                  ),
                ),
                TextSpan(
                  text: 'Conditions',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.darkBlack,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          mainBtn(
            text: 'Place Order',
            onPressed: () {
              cart.clear();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => acceptedScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}

double getCartTotal() {
  double total = 0;

  for (var item in cart) {
    total += double.parse(item.price) * item.amount;
  }

  return total;
}
