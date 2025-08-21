import 'package:flutter/material.dart';
import 'package:nectar_ui/feature/home/model/order_model.dart';

class MyCartListUI extends StatefulWidget {
  const MyCartListUI({super.key, required this.item, required this.onRemove});

  final ProductModel item;
  final VoidCallback onRemove;

  @override
  State<MyCartListUI> createState() => _MyCartListUIState();
}

class _MyCartListUIState extends State<MyCartListUI> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 1),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
      ),
      child: Stack(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 90,
                  height: 90,
                  child: Image.asset(
                    widget.item.image,
                    width: 90,
                    height: 90,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.item.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          "Size: ${widget.item.size}, ",
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "\$${widget.item.price}",
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        FloatingActionButton(
                          onPressed: () {
                            if (widget.item.amount > 1) {
                              setState(() {
                                widget.item.amount--;
                              });
                            }
                          },
                          mini: true,
                          elevation: 0,
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: BorderSide(
                              color: Colors.grey.shade400,
                              width: 1,
                            ),
                          ),
                          child: const Icon(Icons.remove, color: Colors.green),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          widget.item.amount.toString(),
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 10),
                        FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              widget.item.amount++;
                            });
                          },
                          mini: true,
                          elevation: 0,
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: BorderSide(
                              color: Colors.grey.shade400,
                              width: 1,
                            ),
                          ),
                          child: const Icon(Icons.add, color: Colors.green),
                        ),
                        const Spacer(),
                        Text(
                          "\$${double.parse(widget.item.price) * widget.item.amount}",
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 0,
            right: -10,
            child: IconButton(
              icon: const Icon(Icons.close, size: 20, color: Colors.grey),
              padding: EdgeInsets.zero,
              onPressed: widget.onRemove,
            ),
          ),
        ],
      ),
    );
  }
}
