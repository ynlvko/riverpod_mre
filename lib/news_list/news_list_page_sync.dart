import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_mre/news_list/news_presenter.dart';
import 'package:riverpod_mre/news_list/search_query_controller.dart';

class NewsListSyncPage extends ConsumerWidget {
  const NewsListSyncPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final news = ref.watch(newsPresenterSyncProvider);

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TextField(
              onChanged: (value) {
                ref.read(searchQueryControllerProvider.notifier).onChanged(value);
              },
            ),
            Flexible(
              child: ListView.builder(
                itemCount: news.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(news[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
