class Product {
  final int id, price;
  final String title, image, link;
  int _tile = 0;

  Product({this.id, this.price, this.title, this.image, this.link});

  String getLink() {
    return products[_tile].link;

  }

}

List<Product> products = [
  Product(
    id: 1,
    price: 55,
    title: "Classic Wooden Bed",
    link: 'assets/bed.glb',
    image: "assets/images/1.png",
      ),
  Product(
    id: 4,
    price: 21,
    title: "Metal Chair",
    image: "assets/images/2.png",
    link: 'assets/chair.glb',
  ),
  Product(
    id: 9,
    price: 42,
    title: "School Bag Shelves",
    image: "assets/images/3.png",
    link: 'assets/SchoolBagShelves.glb'
  ),
  Product(
    id: 12,
    price: 12,
    title: "School Lamps",
    image: "assets/images/4.png",
    link: 'assets/lamp.glb'
  ),
  Product(
    id: 45,
    price: 135,
    title: "Modern Closet",
    image: "assets/images/5.png",
    link: 'assets/closet.glb'
  ),
];


// class CalculatorBrain {
//   CalculatorBrain ({this.weight, this.height});
//
//   final int height;
//   final int weight;
//
//   double _bmi;
//
//   String calculateBMI() {
//     _bmi = weight/pow(height/100, 2);
//     return _bmi.toStringAsFixed(1);
//   }
