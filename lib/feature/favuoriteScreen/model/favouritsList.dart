class FavouriteItem {
  final String name;
  final String image;
  final double price;
  final String quantity;

  FavouriteItem({
    required this.name,
    required this.image,
    required this.price,
    required this.quantity,
  });
}

List<FavouriteItem> favouriteDrinks = [
  FavouriteItem(
    name: 'Coca Cola',
    image: 'assets/images/coca_cola.png',
    price: 4.99,
    quantity: '325ml',
  ),
  FavouriteItem(
    name: 'Pepsi',
    image: 'assets/images/pepsi.png',
    price: 4.99,
    quantity: '330ml',
  ),
  FavouriteItem(
    name: 'Diet Coke',
    image: 'assets/images/diet_coke.png',
    price: 1.99,
    quantity: '355ml',
  ),
  FavouriteItem(
    name: 'Apple Juice',
    image: 'assets/images/apple_juice.png',
    price: 15.50,
    quantity: '1L',
  ),
  FavouriteItem(
    name: 'Sprite Can',
    image: 'assets/images/spirit.png',
    price: 1.50,
    quantity: '325ml',
  ),
];
