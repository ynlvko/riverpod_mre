import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_query_controller.g.dart';

@riverpod
class SearchQueryController extends _$SearchQueryController {
  @override
  String build() {
    print('XXX: SearchQueryController');
    ref.onDispose(() {
      print('XXX: SearchQueryController disposed');
    });
    return '';
  }

  void onChanged(String newQuery) {
    state = newQuery;
  }
}
