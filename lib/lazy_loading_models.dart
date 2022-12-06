import 'package:json_annotation/json_annotation.dart';

part 'lazy_loading_models.g.dart';

abstract class BaseLazyLoadingModel<T> {
  const BaseLazyLoadingModel();
  int get currentPage;
  List<T> get data;
  String get path;
  int get perPage;
  int get total;
  int? get from;
  int? get to;
  int get lastPage;
}

@JsonSerializable(genericArgumentFactories: true)
class LazyLoadingModel<T> extends BaseLazyLoadingModel {
  const LazyLoadingModel({
    required this.data,
    required this.links,
    required this.meta,
  });
  @override
  final List<T> data;
  final LazyLoadingModelLinks links;
  final LazyLoadingModelMeta meta;

  factory LazyLoadingModel.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$LazyLoadingModelFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$LazyLoadingModelToJson(this, toJsonT);

  LazyLoadingModel<T> copyWith({
    List<T>? data,
    LazyLoadingModelLinks? links,
    LazyLoadingModelMeta? meta,
  }) =>
      LazyLoadingModel(
        data: data ?? this.data,
        links: links ?? this.links,
        meta: meta ?? this.meta,
      );

  @override
  int get currentPage => meta.currentPage;

  @override
  int? get from => meta.from;

  @override
  String get path => meta.path;

  @override
  int get perPage => meta.perPage;

  @override
  int? get to => meta.to;

  @override
  int get total => meta.total;

  @override
  int get lastPage => meta.lastPage;
}

@JsonSerializable()
class LazyLoadingModelLinks {
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

  factory LazyLoadingModelLinks.fromJson(Map<String, dynamic> json) =>
      _$LazyLoadingModelLinksFromJson(json);

  Map<String, dynamic> toJson() => _$LazyLoadingModelLinksToJson(this);
}

@JsonSerializable()
class LazyLoadingModelMeta {
  const LazyLoadingModelMeta({
    required this.currentPage,
    required this.from,
    required this.lastPage,
    required this.path,
    required this.perPage,
    required this.to,
    required this.total,
  });
  @JsonKey(name: 'current_page')
  final int currentPage;
  final int? from;
  @JsonKey(name: 'last_page')
  final int lastPage;
  final String path;
  @JsonKey(name: 'per_page')
  final dynamic perPage;
  final int? to;
  final int total;

  factory LazyLoadingModelMeta.fromJson(Map<String, dynamic> json) =>
      _$LazyLoadingModelMetaFromJson(json);

  Map<String, dynamic> toJson() => _$LazyLoadingModelMetaToJson(this);
}

@JsonSerializable(genericArgumentFactories: true)
class NewLazyLoadingModel<T> extends BaseLazyLoadingModel {
  const NewLazyLoadingModel({
    required this.currentPage,
    required this.data,
    required this.firstPageUrl,
    required this.from,
    required this.lastPage,
    required this.lastPageUrl,
    required this.nextPageUrl,
    required this.path,
    required this.perPage,
    required this.prevPageUrl,
    required this.to,
    required this.total,
  });
  @override
  @JsonKey(name: 'current_page')
  final int currentPage;
  @override
  final List<T> data;
  @JsonKey(name: 'first_page_url')
  final String firstPageUrl;
  @override
  final int from;
  @override
  @JsonKey(name: 'last_page')
  final int lastPage;
  @JsonKey(name: 'last_page_url')
  final String lastPageUrl;
  @JsonKey(name: 'next_page_url')
  final String? nextPageUrl;
  @override
  final String path;
  @override
  @JsonKey(name: 'per_page')
  final int perPage;
  @JsonKey(name: 'prev_page_url')
  final String? prevPageUrl;
  @override
  final int total;
  @override
  final int to;

  factory NewLazyLoadingModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? obj) fromJsonT,
  ) =>
      _$NewLazyLoadingModelFromJson<T>(json, fromJsonT);

  Map<String, dynamic> toJson(T Function(Object? json) fromJsonT) =>
      _$NewLazyLoadingModelToJson(this, fromJsonT);
}
