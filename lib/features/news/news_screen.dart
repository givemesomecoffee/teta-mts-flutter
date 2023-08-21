import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news/features/news/news_cell.dart';
import 'package:news/features/news/news_provider.dart';

import '../../toggle_theme_widget.dart';

class NewsScreen extends ConsumerStatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends ConsumerState<NewsScreen> {
  var news = List.empty();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Новости"),
          actions: const [ToggleThemeWidget()],
        ),
        body: RefreshIndicator(
            onRefresh: _pullRefresh,
            child: ref.watch(newsProvider).when(
                error: (e, tr) => SafeArea(
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Не удалось загрузить новости."),
                              TextButton(
                                  onPressed: _pullRefresh,
                                  child: const Text("Обновить"))
                            ]))),
                loading: () => const Center(child: CircularProgressIndicator()),
                data: (data) {
                  return ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return NewsCell(newsItemData: data[index]);
                      });
                })));
  }

  Future _pullRefresh() async {
    ref.refresh(newsProvider);
  }
}
