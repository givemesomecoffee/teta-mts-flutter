import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:news/features/search/filter_provider.dart';

import '../../data/news_service.dart';
import '../../model/news_item.dart';

final searchNewsProvider =
    FutureProvider.autoDispose<List<NewsItemData>?>((ref) {
  final repository = GetIt.instance.get<NewsService>();
  final filter = ref.watch(filterProvider);
  if (filter.isNotEmpty) {
    return repository.searchNews(filter);
  } else {
    return null;
  }
});
