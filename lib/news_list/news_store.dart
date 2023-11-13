import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'news_store.g.dart';

@riverpod
class NewsStore extends _$NewsStore {
  @override
  FutureOr<List<String>> build() async {
    return ['a', 'b', 'c'];
  }
}
