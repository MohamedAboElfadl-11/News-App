import 'package:flutter/material.dart';
import '../models/articles_model.dart';
import 'news_tile.dart';

class NewsListView extends StatelessWidget {
  NewsListView({super.key, required this.articlesModel});

  final List<ArticlesModel> articlesModel;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articlesModel.length,
        (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 22.0),
          child: NewsTile(
            articlesModel: articlesModel[index],
          ),
        ),
      ),
    );
  }
}
