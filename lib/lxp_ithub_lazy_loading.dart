library lxp_ithub_lazy_loading;

import 'package:flutter/foundation.dart';
import 'package:lxp_ithub_lazy_loading/lazy_loading_models.dart';

class LazyLoadingRequest<T> {
  LazyLoadingRequest(this.loadingDataFromPage);
  final Future<LazyLoadingModel<T>> Function(int page) loadingDataFromPage;

  LazyLoadingModelMeta? meta;
  bool listIsEnded = false;

  Future<List<T>> loadingNextData() async {
    if (meta != null && meta!.currentPage == meta!.lastPage) return [];
    int pageNumber = meta == null ? 1 : meta!.currentPage + 1;

    try {
      LazyLoadingModel model = await loadingDataFromPage(pageNumber);
      meta = model.meta;
      listIsEnded = model.meta.currentPage == model.meta.lastPage;
      return model.data as List<T>;
    } catch (e) {
      debugPrint(e.toString());
      return <T>[];
    }
  }
}
