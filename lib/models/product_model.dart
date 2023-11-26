import 'package:equatable/equatable.dart';

class Product extends Equatable{

  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  const Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.isRecommended,
    required this.isPopular,
  });


  @override
  List<Object?> get props => [
      name ,
      category ,
      imageUrl ,
      price , 
      isRecommended , 
      isPopular];

  static List<Product> products = [
    Product(name: 'Nike Shoes', category: 'Shoes', imageUrl: 'images/image1.jpg', price: 1199, isRecommended: true, isPopular: false),
    Product(name: 'Rebook Shoes', category: 'Shoes', imageUrl: 'images/image2.jpg', price: 799, isRecommended: true, isPopular: false),
    Product(name: 'Cold drink', category: 'Cold Drink', imageUrl: 'images/image3.jpg', price: 49, isRecommended: true, isPopular: false),
    Product(name: 'Mohito', category: 'Cold Drink', imageUrl: 'images/image4.jpg', price: 99, isRecommended: true, isPopular: false),
    Product(name: 'Dell Laptop', category: 'Laptop', imageUrl: 'images/image5.jpg', price: 29999, isRecommended: true, isPopular: false),
  ];







}