import 'package:flutter/material.dart';
import 'package:newsapp/models/articles_model.dart';

class NewsTile extends StatelessWidget {
  final ArticlesModel articlesModel;

  const NewsTile({super.key, required this.articlesModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadiusDirectional.circular(8.0),
          child: articlesModel.image != null
              ? Image.network(
                  "${articlesModel.image}",
                  height: 220.0,
                  width: double.infinity,
                  fit: BoxFit.cover,
                )
              : Container(
                  height: 220.0,
                  color: Colors.white,
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.image_not_supported,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "No Image Available ",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0),
                        ),
                      ],
                    ),
                  ),
                ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        Text(
          maxLines: 2,
          articlesModel.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        Text(
          maxLines: 3,
          articlesModel.subTitle ?? '',
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
