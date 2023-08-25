import 'package:flutter/material.dart';

import '../models/category_model.dart';
import 'card_category.dart';

class ListViewCard extends StatelessWidget {
  ListViewCard({super.key});

  List<CategoryModel> categories = const [
    CategoryModel(
      categoryImage: "assets/bussines.jpeg",
      categoryName: "Business",
    ),
    CategoryModel(
      categoryImage: "assets/sport.jpeg",
      categoryName: "Sport",
    ),
    CategoryModel(
      categoryImage: "assets/general.jpeg",
      categoryName: "General",
    ),
    CategoryModel(
      categoryImage: "assets/science.jpeg",
      categoryName: "Science",
    ),
    CategoryModel(
      categoryImage: "assets/technology.jpeg",
      categoryName: "Technology",
    ),
    CategoryModel(
      categoryImage: "assets/health.jpeg",
      categoryName: "Health",
    ),
    CategoryModel(
      categoryImage: "assets/entertamint.jpeg",
      categoryName: "Entertain",
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
