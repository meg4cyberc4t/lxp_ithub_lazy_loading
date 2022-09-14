import 'package:dart_mappable/dart_mappable.dart';
import 'package:lxp_ithub_lazy_loading/lazy_loading_models.mapper.g.dart';

@MappableClass()
class LazyLoadingModel<T> with Mappable {
  const LazyLoadingModel({
    required this.data,
    required this.links,
    required this.meta,
  });
  final List<T> data;
  final LazyLoadingModelLinks links;
  final LazyLoadingModelMeta meta;
}

@MappableClass()
class LazyLoadingModelLinks with Mappable {
  const LazyLoadingModelLinks({
    required this.first,
    required this.last,
    required this.next,
    required this.prev,
  });
  final String first;
  final String last;
  final String? next;
  final String? prev;
}

@MappableClass()
class LazyLoadingModelMeta with Mappable {
  const LazyLoadingModelMeta({
    required this.currentPage,
    required this.from,
    required this.lastPage,
    required this.path,
    required this.perPage,
    required this.to,
    required this.total,
  });
  @MappableField(key: 'current_page')
  final int currentPage;
  final int? from;
  @MappableField(key: 'last_page')
  final int lastPage;
  final String path;
  @MappableField(key: 'per_page')
  final dynamic perPage;
  final int? to;
  final int total;
}
