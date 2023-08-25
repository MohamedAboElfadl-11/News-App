import 'package:flutter/material.dart';
import 'package:newsapp/models/category_model.dart';

class CardCategory extends StatelessWidget {
  const CardCategory({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 170,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(12.0),
          image:  DecorationImage(
            fit:BoxFit.fill ,
            image: AssetImage(categoryModel.categoryImage),
          ),
        ),
        child: Center(
          child: Text(
            categoryModel.categoryName,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}
