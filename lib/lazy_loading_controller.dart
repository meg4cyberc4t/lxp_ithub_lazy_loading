import 'package:lxp_ithub_lazy_loading/lazy_loading_list_view.dart';
import 'package:meta/meta.dart';

class LazyLoadingController<T> {
  @internal
  late LazyLoadingListViewState<T> state;

  void reloadList() => state.reloadList();
}
