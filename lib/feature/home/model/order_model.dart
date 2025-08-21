class ProductModel {
  final String name;
  final String image;
  final String price;
  final String size;
  String weight;
  int amount;

  ProductModel({
    required this.name,
    required this.image,
    required this.price,
    required this.size,
    this.weight = '1kg',
    this.amount = 1,
  });
}

List<ProductModel> cart = [];
List<ProductModel> products = [
  ProductModel(
    name: 'Banana',
    image: 'assets/images/banana.png',
    price: '9.99',
    size: '1',
    weight: '7pcs',
  ),
  ProductModel(
    name: 'Apples',
    image: 'assets/images/apple.png',
    price: '12.99',
    size: '1',
    weight: '1kg',
  ),
  ProductModel(
    name: 'Banana',
    image: 'assets/images/banana.png',
    price: '9.99',
    size: '1',
    weight: '1kg',
  ),
  ProductModel(
    name: 'Apples',
    image: 'assets/images/apple.png',
    price: '12.99',
    size: '1',
    weight: '1kg',
  ),
  ProductModel(
    name: 'Banana',
    image: 'assets/images/banana.png',
    price: '9.99',
    size: '1',
    weight: '1kg',
  ),
  ProductModel(
    name: 'Apples',
    image: 'assets/images/apple.png',
    price: '12.99',
    size: '1',
    weight: '1kg',
  ),
];

List<ProductModel> bestSellingProducts = [
  ProductModel(
    name: 'ginger',
    image: 'assets/images/ginger.png',
    price: '9.99',
    size: '1',
    weight: '1kg',
  ),
  ProductModel(
    name: 'pepper',
    image: 'assets/images/pepper.png',
    price: '12.99',
    size: '1',
    weight: '1kg',
  ),
  ProductModel(
    name: 'ginger',
    image: 'assets/images/ginger.png',
    price: '9.99',
    size: '1',
    weight: '1kg',
  ),
  ProductModel(
    name: 'pepper',
    image: 'assets/images/pepper.png',
    price: '12.99',
    size: '1',
    weight: '1kg',
  ),
];
