import 'package:dio/dio.dart';
import 'package:newsapp/models/articles_model.dart';

class NewsServices {
  final Dio dio;

  NewsServices(this.dio);

  Future<List<ArticlesModel>> getNews() async {
    Response response = await dio.get(
        "https://newsapi.org/v2/everything?q=business&apiKey=3bbe781ab68142d7bf88148803f9d8c9");
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData["articles"];
    List<ArticlesModel> articlesList = [];

    for (var articles in articles) {
      ArticlesModel articlesModel = ArticlesModel(
        title: articles['title'],
        image: articles['urlToImage'],
        subTitle: articles['description'],
      );
      articlesList.add(articlesModel);
    }
    return articlesList;
  }
}
