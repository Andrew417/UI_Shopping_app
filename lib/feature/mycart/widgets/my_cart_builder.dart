import 'package:flutter/material.dart';
import 'package:nectar_ui/feature/mycart/model/CartItemModel.dart';
import 'package:nectar_ui/feature/mycart/widgets/my_cart_list_ui.dart';

class myCartBuilder extends StatelessWidget {
  const myCartBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cartItems.length,
      itemBuilder: (context, index) {
        var item = cartItems[index];
        return myCartListUI(item: item);
      },
    );
  }
}
