import 'package:flutter/material.dart';

import '../models/category_model.dart';
import 'card_category.dart';

class ListViewCard extends StatelessWidget {
  ListViewCard({super.key});

  List<CategoryModel> categories = const [
    CategoryModel(
      categoryImage: "assets/business.jpg",
      categoryName: "Business",
    ),
    CategoryModel(
      categoryImage: "assets/sports.jpg",
      categoryName: "Sport",
    ),
    CategoryModel(
      categoryImage: "assets/gray-genetics-science-dna-7gtkfw2nqjstwqmf.jpg",
      categoryName: "Science",
    ),
    CategoryModel(
      categoryImage: "assets/technology.jpeg",
      categoryName: "Technology",
    ),
    CategoryModel(
      categoryImage: "assets/health.jpg",
      categoryName: "Health",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics:const  BouncingScrollPhysics(),
      itemBuilder: (context, index) => CardCategory(
        categoryModel: categories[index],
      ),
      itemCount: categories.length,
      scrollDirection: Axis.horizontal,
    );
  }
}
