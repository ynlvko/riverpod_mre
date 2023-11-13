import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_mre/news_list/news_store.dart';
import 'package:riverpod_mre/news_list/search_query_controller.dart';

part 'news_presenter.g.dart';

@riverpod
Future<List<String>> newsPresenter(NewsPresenterRef ref) async {
  final news = await ref.watch(newsStoreProvider.future);
  final searchQuery = ref.watch(searchQueryControllerProvider).toLowerCase();

  return news.where((n) => n.toLowerCase().contains(searchQuery)).toList();
}


@riverpod
List<String> newsPresenterSync(NewsPresenterSyncRef ref) {
  final news = ref.watch(newsStoreProvider).valueOrNull ?? [];
  final searchQuery = ref.watch(searchQueryControllerProvider).toLowerCase();

  return news.where((n) => n.toLowerCase().contains(searchQuery)).toList();
}
