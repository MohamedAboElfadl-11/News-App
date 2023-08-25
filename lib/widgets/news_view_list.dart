import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/services/news_services.dart';

import '../models/articles_model.dart';
import 'news_tile.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({super.key});

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticlesModel> articlesModel = [];

  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articlesModel = await NewsServices(Dio()).getNews();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : SliverList(
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
