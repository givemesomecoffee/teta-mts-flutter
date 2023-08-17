import 'package:dio/dio.dart';
import 'package:news/model/news_item.dart';
import 'package:news/model/news_response.dart';

class NewsService {
  final dio = Dio();

  Future<List<NewsItemData>> getNews() async {
    final response = await dio.get("${_HOST}r/flutterdev/new.json");
    final result = NewsResponse.fromJson(response.data);
    print(result);
    return result.data.children.map((e) => e.data).toList().sublist(0,15);
  }

  Future<List<NewsItemData>> searchNews(String filter) async {
    final response = await dio.get("${_HOST}search.json?q=$filter");
    final result = NewsResponse.fromJson(response.data);
    print(result);
    return result.data.children.map((e) => e.data).toList();
  }


  static const _HOST = "https://reddit.com/";
}
