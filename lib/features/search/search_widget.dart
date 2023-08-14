import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news/features/search/filter_provider.dart';

class SearchWidget extends ConsumerStatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends ConsumerState<SearchWidget> {
  late final TextEditingController _controller;
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            const Center(child: Icon(Icons.search)),
            Container(
              width: 10,
            ),
            Expanded(
              child: TextField(
                controller: _controller,
                onChanged: _onSearchChanged,
                decoration: const InputDecoration(
                  hintText: 'начните поиск..',
                ),
              ),
            )
          ],
        ));
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  void _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      _updateSearchFilter(query);
    });
  }

  void _updateSearchFilter(String text) {
    ref.read(filterProvider.notifier).state = text;
  }
}
