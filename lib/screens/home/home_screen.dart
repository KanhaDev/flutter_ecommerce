import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/models/models.dart';
import 'package:ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Kanhaiya Ecart'),
      bottomNavigationBar: CustomNavBar(),
      body: Column(
        children: [
          Container(
              child: CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 1.5,
              viewportFraction: 0.9,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
            ),
            items: Category.categories
                .map((category) => HeroCarouselCard(category: category))
                .toList(),
          ),
          ),
          SectionTitle(title: 'RECOMENDED'),

          //Product Card
          Stack(children: [
            Container(width: MediaQuery.of(context).size.width /2.5,
            height:  150,
            child: Image.network(
              Product.products[0].imageUrl,
               fit: BoxFit.cover,
               ),
               ),
            
            Positioned(
              top: 60,
              child: Container(width: MediaQuery.of(context).size.width /2.5,
              height: 80,
              decoration: BoxDecoration(color:  Colors.black.withAlpha(50),
              ),
              ),
            ),
            Positioned(
              top: 60,
              left: 5,
              child: Container(width: MediaQuery.of(context).size.width /2.5 - 10,
              height: 80,
              decoration: BoxDecoration(color:  Colors.black,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Product.products[0].name,
                        style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white),
                      ),
                      Text(
                    '\Rs${Product.products[0].price}',
                    style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white),
                  )
                    ],
                  ), 
                ]),
              ),
              ),
            )
          ],)
        ],
      ),
    );
  }
}

