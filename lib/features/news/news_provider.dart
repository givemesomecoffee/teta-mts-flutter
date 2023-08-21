import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:news/data/news_service.dart';
import 'package:news/model/news_item.dart';

final newsProvider = FutureProvider.autoDispose<List<NewsItemData>>((ref) {
  final repository = GetIt.instance.get<NewsService>();
  return repository.getNews();
});