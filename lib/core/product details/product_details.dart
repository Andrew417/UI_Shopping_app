import 'package:flutter/material.dart';
import 'package:nectar_ui/compnents/button/main_btn.dart';
import 'package:nectar_ui/core/utils/app_colors.dart';
import 'package:nectar_ui/feature/home/model/order_model.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key, required this.model});

  final ProductModel model;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(right: 25, left: 25, bottom: 10),
        child: SafeArea(
          child: mainBtn(
            text: 'Add to Basket',
            onPressed: () {
              cart.add(widget.model);

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('${widget.model.name} added to cart'),
                  duration: const Duration(seconds: 2),
                ),
              );
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: const Color(0xffF2F3F2),
              ),
              child: Stack(
                children: [
                  Center(
                    child: Hero(
                      tag: 'product-${widget.model.name}',
                      child: Image.asset(
                        widget.model.image,
                        width: 250,
                        height: double.infinity,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.arrow_back_ios_new_outlined),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.file_upload_outlined),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.model.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border_rounded),
                        padding: EdgeInsets.zero,
                      ),
                    ],
                  ),
                  Text(
                    '\$${widget.model.price}',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: AppColors.grey,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FloatingActionButton(
                        heroTag: null, // <-- Fix duplicate hero error
                        onPressed: () {
                          if (widget.model.amount > 1) {
                            setState(() {
                              widget.model.amount--;
                            });
                          }
                        },
                        mini: true,
                        elevation: 0,
                        backgroundColor: Colors.white,
                        child: const Icon(Icons.remove, color: Colors.green),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.grey.shade400,
                            width: 1,
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        child: Text(
                          '${widget.model.amount}',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(width: 10),
                      FloatingActionButton(
                        heroTag: null, 
                        onPressed: () {
                          setState(() {
                            widget.model.amount++;
                          });
                        },
                        mini: true,
                        elevation: 0,
                        backgroundColor: Colors.white,
                        child: const Icon(
                          Icons.add,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '\$${double.parse(widget.model.price) * widget.model.amount}',
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Divider(color: Colors.grey.shade300, thickness: 0.4),
                  Row(
                    children: [
                      const Text(
                        'Product Details',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios_rounded),
                        padding: EdgeInsets.zero,
                        iconSize: 20,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Apples are nutritious. Apples may be good for weight loss. Apples may be good for your heart. As part of a healthy and varied diet.',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
                  ),
                  const SizedBox(height: 16),
                  Divider(color: Colors.grey.shade300, thickness: 0.4),
                  Row(
                    children: [
                      const Text(
                        'Nutritions',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios_rounded),
                        padding: EdgeInsets.zero,
                        iconSize: 20,
                      ),
                    ],
                  ),
                  Divider(color: Colors.grey.shade300, thickness: 0.4),
                  Row(
                    children: [
                      const Text(
                        'Review',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.star_rounded, color: Colors.orange),
                      const Icon(Icons.star_rounded, color: Colors.orange),
                      const Icon(Icons.star_rounded, color: Colors.orange),
                      const Icon(Icons.star_rounded, color: Colors.orange),
                      const Icon(Icons.star_rounded, color: Colors.orange),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios_rounded),
                        padding: EdgeInsets.zero,
                        iconSize: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
