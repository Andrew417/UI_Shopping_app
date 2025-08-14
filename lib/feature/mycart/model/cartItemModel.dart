class CartItemModel {
  final String name;
  final String image;
  final double price;
  final int quantity;
  final String size;

  CartItemModel({
    required this.name,
    required this.image,
    required this.price,
    required this.quantity,
    required this.size,
  });

  double get totalPrice => price * quantity;
}

List<CartItemModel> cartItems = [
  CartItemModel(
    name: 'Banana',
    image: 'assets/images/bananasvg.svg',
    price: 9.99,
    quantity: 2,
    size: '1',
  ),
  CartItemModel(
    name: 'Apples',
    image: 'assets/images/applesvg.svg',
    price: 12.99,
    quantity: 1,
    size: '1',
  ),
  CartItemModel(
    name: 'Ginger',
    image: 'assets/images/ginger.svg',
    price: 9.99,
    quantity: 3,
    size: '1',
  ),
  CartItemModel(
    name: 'Pepper',
    image: 'assets/images/pepper.svg',
    price: 12.99,
    quantity: 1,
    size: '1',
  ),
];
