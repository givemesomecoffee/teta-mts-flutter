import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news/features/search/filter_provider.dart';

class SearchWidget extends ConsumerWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 64),
        child: TextField(
          onSubmitted: (text) {
            _updateSearchFilter(text, ref);
          },
        ));
  }

  void _updateSearchFilter(String text, WidgetRef ref) {
    ref.read(filterProvider.notifier).state = text;
  }
}
