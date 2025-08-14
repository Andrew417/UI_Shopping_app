import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final bool shop;
  final bool explore;
  final bool cart;
  final bool favourite;
  final bool account;

  const BottomBar({
    super.key,
    this.shop = false,
    this.explore = false,
    this.cart = false,
    this.favourite = false,
    this.account = false,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.black,
      items: [
        BottomNavigationBarItem(
          icon: InkWell(
            onTap: () {}, 
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.store_outlined,
                  color: shop ? Colors.green : Colors.black,
                ),
                Text(
                  "Shop",
                  style: TextStyle(color: shop ? Colors.green : Colors.black),
                ),
              ],
            ),
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: InkWell(
            onTap: () {}, 
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.search_outlined,
                  color: explore ? Colors.green : Colors.black,
                ),
                Text(
                  "Explore",
                  style: TextStyle(
                    color: explore ? Colors.green : Colors.black,
                  ),
                ),
              ],
            ),
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: InkWell(
            onTap: () {}, 
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.shopping_cart_outlined,
                  color: cart ? Colors.green : Colors.black,
                ),
                Text(
                  "Cart",
                  style: TextStyle(color: cart ? Colors.green : Colors.black),
                ),
              ],
            ),
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: InkWell(
            onTap: () {}, 
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.favorite_border,
                  color: favourite ? Colors.green : Colors.black,
                ),
                Text(
                  "Favourite",
                  style: TextStyle(
                    color: favourite ? Colors.green : Colors.black,
                  ),
                ),
              ],
            ),
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: InkWell(
            onTap: () {}, 
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.person_2_outlined,
                  color: account ? Colors.green : Colors.black,
                ),
                Text(
                  "Account",
                  style: TextStyle(
                    color: account ? Colors.green : Colors.black,
                  ),
                ),
              ],
            ),
          ),
          label: "",
        ),
      ],
    );
  }
}
