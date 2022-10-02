import 'package:json_annotation/json_annotation.dart';

part 'lazy_loading_models.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class LazyLoadingModel<T> {
  const LazyLoadingModel({
    required this.data,
    required this.links,
    required this.meta,
  });
  final List<T> data;
  final LazyLoadingModelLinks links;
  final LazyLoadingModelMeta meta;

  factory LazyLoadingModel.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$LazyLoadingModelFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$LazyLoadingModelToJson(this, toJsonT);
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
