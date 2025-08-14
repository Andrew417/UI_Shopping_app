class ProductModel {
  final String name;
  final String image;
  final String price;
  final String size;

  ProductModel({
    required this.name,
    required this.image,
    required this.price,
    required this.size,
  });
}

List<ProductModel> products = [
  ProductModel(
    name: 'Banana',
    image: 'assets/images/bananasvg.svg',
    price: '9.99',
    size: '1',
  ),
  ProductModel(
    name: 'Apples',
    image: 'assets/images/applesvg.svg',
    price: '12.99',
    size: '1',
  ),
  ProductModel(
    name: 'Apples',
    image: 'assets/images/applesvg.svg',
    price: '7.99',
    size: '1',
  ),
  ProductModel(
    name: 'Banana',
    image: 'assets/images/bananasvg.svg',
    price: '9.99',
    size: '1',
  ),
  ProductModel(
    name: 'Banana',
    image: 'assets/images/bananasvg.svg',
    price: '12.99',
    size: '1',
  ),
  ProductModel(
    name: 'Banana',
    image: 'assets/images/bananasvg.svg',
    price: '7.99',
    size: '1',
  ),
  ProductModel(
    name: 'Banana',
    image: 'assets/images/bananasvg.svg',
    price: '9.99',
    size: '1',
  ),
];
