import 'package:equatable/equatable.dart';

class Category extends Equatable{
  final String name;
  final String imageUrl;

  const Category({
    required this.name,
    required this.imageUrl,
  });
  


  @override
  List<Object?> get props => [name,imageUrl];
  
  static List<Category> categories = [
    Category(
      name: 'Shoes',
      imageUrl: 'images/image1.jpg' ),
      Category(
      name: 'Cold Drink',
      imageUrl: 'images/image3.jpg' ),
      Category(
      name: 'Laptop',
      imageUrl: 'images/image5.jpg' ),
  ];
  
  }