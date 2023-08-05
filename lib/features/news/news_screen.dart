import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news/features/news/news_cell.dart';
import 'package:news/features/news/news_provider.dart';

class NewsScreen extends ConsumerStatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends ConsumerState<NewsScreen> {
  var news = List.empty();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text("News"),
        ),
        body:RefreshIndicator(
    onRefresh: _pullRefresh,
    child: ref.watch(newsProvider).when(error: (e, tr) => const Placeholder() , loading: () => const Placeholder(),
    data: (data){
      return ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return NewsCell(newsItemData: data[index]);
          });
    })));
  }

  Future _pullRefresh() async{
   ref.refresh(newsProvider);
  }
}
