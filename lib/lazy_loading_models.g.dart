// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lazy_loading_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LazyLoadingModel<T> _$LazyLoadingModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    LazyLoadingModel<T>(
      data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
      links:
          LazyLoadingModelLinks.fromJson(json['links'] as Map<String, dynamic>),
      meta: LazyLoadingModelMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LazyLoadingModelToJson<T>(
  LazyLoadingModel<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': instance.data.map(toJsonT).toList(),
      'links': instance.links,
      'meta': instance.meta,
    };

LazyLoadingModelLinks _$LazyLoadingModelLinksFromJson(
        Map<String, dynamic> json) =>
    LazyLoadingModelLinks(
      first: json['first'] as String,
      last: json['last'] as String,
      next: json['next'] as String?,
      prev: json['prev'] as String?,
    );

Map<String, dynamic> _$LazyLoadingModelLinksToJson(
        LazyLoadingModelLinks instance) =>
    <String, dynamic>{
      'first': instance.first,
      'last': instance.last,
      'next': instance.next,
      'prev': instance.prev,
    };

LazyLoadingModelMeta _$LazyLoadingModelMetaFromJson(
        Map<String, dynamic> json) =>
    LazyLoadingModelMeta(
      currentPage: json['current_page'] as int,
      from: json['from'] as int?,
      lastPage: json['last_page'] as int,
      path: json['path'] as String,
      perPage: json['per_page'],
      to: json['to'] as int?,
      total: json['total'] as int,
    );

Map<String, dynamic> _$LazyLoadingModelMetaToJson(
        LazyLoadingModelMeta instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'from': instance.from,
      'last_page': instance.lastPage,
      'path': instance.path,
      'per_page': instance.perPage,
      'to': instance.to,
      'total': instance.total,
    };
