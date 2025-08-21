import 'package:flutter/material.dart';
import 'package:nectar_ui/feature/home/model/order_model.dart';
import 'package:nectar_ui/feature/mycart/widgets/my_cart_list_ui.dart';

class MyCartBuilder extends StatefulWidget {
  const MyCartBuilder({super.key});

  @override
  State<MyCartBuilder> createState() => _MyCartBuilderState();
}

class _MyCartBuilderState extends State<MyCartBuilder> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cart.length,
      itemBuilder: (context, index) {
        var item = cart[index];
        return MyCartListUI(
          item: item,
          onRemove: () {
            setState(() {
              cart.removeAt(index); 
            });
          },
        );
      },
    );
  }
}
