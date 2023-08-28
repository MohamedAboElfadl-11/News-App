import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/articles_model.dart';
import '../services/news_services.dart';
import 'news_view_list.dart';

class NewsListViewBuilder extends StatefulWidget {

  final String category;

  const NewsListViewBuilder({super.key, required this.category});

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}
var future;
class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  @override
  void initState() {
    super.initState();

    future = NewsServices(Dio()).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticlesModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(
            articlesModel: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const Center(
            child: Text("Oops! there was an error, try later"),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
