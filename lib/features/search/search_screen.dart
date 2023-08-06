import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news/features/search/search_news_provider.dart';
import 'package:news/features/search/search_widget.dart';

import '../../toggle_theme_widget.dart';
import '../news/news_cell.dart';

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Search"),
          actions: const [ToggleThemeWidget()],
        ),
        body: Column(
          children: [
            const SearchWidget(),
            ref.watch(searchNewsProvider).when(
                error: (e, tr) => const Text("Начните поиск"),
                loading: () => const Expanded(child: Center(child: CircularProgressIndicator())),
                data: (data) {
                  if (data != null) {
                    if (data.isEmpty) {
                      return const Text("По вашему запросу ничего не найдено");
                    } else {
                      return Expanded(
                          child: ListView.builder(
                              itemCount: data.length,
                              itemBuilder: (context, index) {
                                return NewsCell(newsItemData: data[index]);
                              }));
                    }
                  } else {
                    return const Expanded(child: Center( child: Text("Начните поиск")));
                  }
                })
          ],
        ));
  }
}
