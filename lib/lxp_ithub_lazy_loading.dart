library lxp_ithub_lazy_loading;

import 'package:flutter/foundation.dart';
import 'package:lxp_ithub_lazy_loading/lazy_loading_models.dart';

export 'package:lxp_ithub_lazy_loading/lazy_loading_models.dart';

class LazyLoadingRequest<T> {
  LazyLoadingRequest(this.loadingDataFromPage);
  final Future<BaseLazyLoadingModel<T>> Function(int page) loadingDataFromPage;

  LazyLoadingModelMeta? meta;
  bool listIsEnded = false;

  Future<List<T>> loadingNextData() async {
    if (meta != null && meta!.currentPage == meta!.lastPage) return [];
    int pageNumber = meta == null ? 1 : meta!.currentPage + 1;
    try {
      BaseLazyLoadingModel model = await loadingDataFromPage(pageNumber);
      meta = LazyLoadingModelMeta(
        currentPage: model.currentPage,
        from: model.from,
        lastPage: model.lastPage,
        path: model.path,
        perPage: model.perPage,
        to: model.to,
        total: model.total,
      );
      listIsEnded = meta?.currentPage == meta?.lastPage;
      return model.data as List<T>;
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return <T>[];
    }
  }
}
