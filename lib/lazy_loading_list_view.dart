import 'package:flutter/material.dart';
import 'package:lxp_ithub_lazy_loading/lazy_loading_controller.dart';
import 'package:lxp_ithub_lazy_loading/lxp_ithub_lazy_loading.dart';

class LazyLoadingListView<T> extends StatefulWidget {
  const LazyLoadingListView({
    required this.request,
    required this.itemBuilder,
    required this.controller,
    this.onProgress,
    Key? key,
  }) : super(key: key);

  static const scrollOffset = 50;
  final LazyLoadingRequest<T> request;
  final Widget Function(BuildContext)? onProgress;
  final Widget Function(BuildContext, T data) itemBuilder;
  final LazyLoadingController controller;

  @override
  State<LazyLoadingListView> createState() => LazyLoadingListViewState<T>();
}

class LazyLoadingListViewState<T> extends State<LazyLoadingListView<T>> {
  void reloadList() {
    widget.request.listIsEnded = false;
    widget.request.meta = null;
    setState(() {});
  }

  @override
  void initState() {
    widget.controller.state = this;
    super.initState();
  }

  bool isDownloading = false;

  final ValueNotifier<List<T>> data = ValueNotifier([]);

  Future<void> loadMore() async {
    if (isDownloading) return;
    if (widget.request.listIsEnded) return;
    isDownloading = true;
    data.value = data.value + await widget.request.loadingNextData();
    isDownloading = false;
  }

  bool onNotification(ScrollNotification notification) {
    if (notification is ScrollUpdateNotification) {
      if (notification.metrics.maxScrollExtent < notification.metrics.pixels &&
          notification.metrics.maxScrollExtent - notification.metrics.pixels >=
              -LazyLoadingListView.scrollOffset) {
        loadMore();
      }
      return true;
    }

    if (notification is OverscrollNotification) {
      if (notification.overscroll > 0) {
        loadMore();
      }
      return true;
    }
    return false;
  }

  Widget Function(BuildContext) get onProgress =>
      widget.onProgress ??
      (_) => const Center(
            child: SizedBox.square(
              dimension: 50,
              child: Center(child: CircularProgressIndicator.adaptive()),
            ),
          );

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future:
          widget.request.loadingNextData().then((value) => data.value = value),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.hasError) {
          debugPrint(snapshot.error.toString());
          debugPrintStack(stackTrace: snapshot.stackTrace);
        }
        if (!snapshot.hasData) {
          return onProgress(context);
        }
        return ValueListenableBuilder(
            valueListenable: data,
            builder: (context, List<T> data, _) {
              return NotificationListener<ScrollNotification>(
                onNotification: onNotification,
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(vertical: 4).add(
                      EdgeInsets.only(
                          bottom: MediaQuery.of(context).padding.bottom)),
                  physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics(),
                  ),
                  itemBuilder: (context, index) {
                    if (data.length == index && !widget.request.listIsEnded) {
                      return onProgress(context);
                    }
                    return widget.itemBuilder(context, data[index]);
                  },
                  itemCount: widget.request.listIsEnded
                      ? data.length
                      : data.length + 1,
                ),
              );
            });
      },
    );
  }
}
