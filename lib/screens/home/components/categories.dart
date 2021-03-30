import 'package:flutter/material.dart';
import 'package:furniture_app/models/Categories.dart';
import 'package:furniture_app/models/Product.dart';
import 'package:furniture_app/screens/details/details_screen.dart';
import 'package:furniture_app/screens/home/components/category_card.dart';

class Categories extends StatelessWidget {
  final List<Category> categories;
  // final List<Product> products;

  const Categories({
    Key key,
    this.categories,
    // this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        // children: [
        //   CategoryCard(category: category),
        //   CategoryCard(category: category),
        // ],
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            category: categories[index],
            press: () {},
          ),
        ),
      ),
    );
  }
}
