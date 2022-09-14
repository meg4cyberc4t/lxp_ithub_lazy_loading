import 'package:dart_mappable/dart_mappable.dart';
import 'package:dart_mappable/internals.dart';

import 'lazy_loading_models.dart';


// === ALL STATICALLY REGISTERED MAPPERS ===

var _mappers = <BaseMapper>{
  // class mappers
  LazyLoadingModelMapper._(),
  LazyLoadingModelLinksMapper._(),
  LazyLoadingModelMetaMapper._(),
  // enum mappers
  // custom mappers
};


// === GENERATED CLASS MAPPERS AND EXTENSIONS ===

class LazyLoadingModelMapper extends BaseMapper<LazyLoadingModel> {
  LazyLoadingModelMapper._();

  @override Function get decoder => decode;
  LazyLoadingModel<T> decode<T>(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap<T>(map));
  LazyLoadingModel<T> fromMap<T>(Map<String, dynamic> map) => LazyLoadingModel(data: Mapper.i.$get(map, 'data'), links: Mapper.i.$get(map, 'links'), meta: Mapper.i.$get(map, 'meta'));

  @override Function get encoder => (LazyLoadingModel v) => encode(v);
  dynamic encode(LazyLoadingModel v) => toMap(v);
  Map<String, dynamic> toMap(LazyLoadingModel l) => {'data': Mapper.i.$enc(l.data, 'data'), 'links': Mapper.i.$enc(l.links, 'links'), 'meta': Mapper.i.$enc(l.meta, 'meta')};

  @override String stringify(LazyLoadingModel self) => 'LazyLoadingModel(data: ${Mapper.asString(self.data)}, links: ${Mapper.asString(self.links)}, meta: ${Mapper.asString(self.meta)})';
  @override int hash(LazyLoadingModel self) => Mapper.hash(self.data) ^ Mapper.hash(self.links) ^ Mapper.hash(self.meta);
  @override bool equals(LazyLoadingModel self, LazyLoadingModel other) => Mapper.isEqual(self.data, other.data) && Mapper.isEqual(self.links, other.links) && Mapper.isEqual(self.meta, other.meta);

  @override Function get typeFactory => <T>(f) => f<LazyLoadingModel<T>>();
}

extension LazyLoadingModelMapperExtension <T> on LazyLoadingModel<T> {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  LazyLoadingModelCopyWith<LazyLoadingModel<T>, T> get copyWith => LazyLoadingModelCopyWith(this, $identity);
}

abstract class LazyLoadingModelCopyWith<$R, T> {
  factory LazyLoadingModelCopyWith(LazyLoadingModel<T> value, Then<LazyLoadingModel<T>, $R> then) = _LazyLoadingModelCopyWithImpl<$R, T>;
  LazyLoadingModelLinksCopyWith<$R> get links;
  LazyLoadingModelMetaCopyWith<$R> get meta;
  $R call({List<T>? data, LazyLoadingModelLinks? links, LazyLoadingModelMeta? meta});
  $R apply(LazyLoadingModel<T> Function(LazyLoadingModel<T>) transform);
}

class _LazyLoadingModelCopyWithImpl<$R, T> extends BaseCopyWith<LazyLoadingModel<T>, $R> implements LazyLoadingModelCopyWith<$R, T> {
  _LazyLoadingModelCopyWithImpl(LazyLoadingModel<T> value, Then<LazyLoadingModel<T>, $R> then) : super(value, then);

  @override LazyLoadingModelLinksCopyWith<$R> get links => LazyLoadingModelLinksCopyWith($value.links, (v) => call(links: v));
  @override LazyLoadingModelMetaCopyWith<$R> get meta => LazyLoadingModelMetaCopyWith($value.meta, (v) => call(meta: v));
  @override $R call({List<T>? data, LazyLoadingModelLinks? links, LazyLoadingModelMeta? meta}) => $then(LazyLoadingModel(data: data ?? $value.data, links: links ?? $value.links, meta: meta ?? $value.meta));
}

class LazyLoadingModelLinksMapper extends BaseMapper<LazyLoadingModelLinks> {
  LazyLoadingModelLinksMapper._();

  @override Function get decoder => decode;
  LazyLoadingModelLinks decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  LazyLoadingModelLinks fromMap(Map<String, dynamic> map) => LazyLoadingModelLinks(first: Mapper.i.$get(map, 'first'), last: Mapper.i.$get(map, 'last'), next: Mapper.i.$getOpt(map, 'next'), prev: Mapper.i.$getOpt(map, 'prev'));

  @override Function get encoder => (LazyLoadingModelLinks v) => encode(v);
  dynamic encode(LazyLoadingModelLinks v) => toMap(v);
  Map<String, dynamic> toMap(LazyLoadingModelLinks l) => {'first': Mapper.i.$enc(l.first, 'first'), 'last': Mapper.i.$enc(l.last, 'last'), 'next': Mapper.i.$enc(l.next, 'next'), 'prev': Mapper.i.$enc(l.prev, 'prev')};

  @override String stringify(LazyLoadingModelLinks self) => 'LazyLoadingModelLinks(first: ${Mapper.asString(self.first)}, last: ${Mapper.asString(self.last)}, next: ${Mapper.asString(self.next)}, prev: ${Mapper.asString(self.prev)})';
  @override int hash(LazyLoadingModelLinks self) => Mapper.hash(self.first) ^ Mapper.hash(self.last) ^ Mapper.hash(self.next) ^ Mapper.hash(self.prev);
  @override bool equals(LazyLoadingModelLinks self, LazyLoadingModelLinks other) => Mapper.isEqual(self.first, other.first) && Mapper.isEqual(self.last, other.last) && Mapper.isEqual(self.next, other.next) && Mapper.isEqual(self.prev, other.prev);

  @override Function get typeFactory => (f) => f<LazyLoadingModelLinks>();
}

extension LazyLoadingModelLinksMapperExtension  on LazyLoadingModelLinks {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  LazyLoadingModelLinksCopyWith<LazyLoadingModelLinks> get copyWith => LazyLoadingModelLinksCopyWith(this, $identity);
}

abstract class LazyLoadingModelLinksCopyWith<$R> {
  factory LazyLoadingModelLinksCopyWith(LazyLoadingModelLinks value, Then<LazyLoadingModelLinks, $R> then) = _LazyLoadingModelLinksCopyWithImpl<$R>;
  $R call({String? first, String? last, String? next, String? prev});
  $R apply(LazyLoadingModelLinks Function(LazyLoadingModelLinks) transform);
}

class _LazyLoadingModelLinksCopyWithImpl<$R> extends BaseCopyWith<LazyLoadingModelLinks, $R> implements LazyLoadingModelLinksCopyWith<$R> {
  _LazyLoadingModelLinksCopyWithImpl(LazyLoadingModelLinks value, Then<LazyLoadingModelLinks, $R> then) : super(value, then);

  @override $R call({String? first, String? last, Object? next = $none, Object? prev = $none}) => $then(LazyLoadingModelLinks(first: first ?? $value.first, last: last ?? $value.last, next: or(next, $value.next), prev: or(prev, $value.prev)));
}

class LazyLoadingModelMetaMapper extends BaseMapper<LazyLoadingModelMeta> {
  LazyLoadingModelMetaMapper._();

  @override Function get decoder => decode;
  LazyLoadingModelMeta decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  LazyLoadingModelMeta fromMap(Map<String, dynamic> map) => LazyLoadingModelMeta(currentPage: Mapper.i.$get(map, 'current_page'), from: Mapper.i.$getOpt(map, 'from'), lastPage: Mapper.i.$get(map, 'last_page'), path: Mapper.i.$get(map, 'path'), perPage: Mapper.i.$getOpt(map, 'per_page'), to: Mapper.i.$getOpt(map, 'to'), total: Mapper.i.$get(map, 'total'));

  @override Function get encoder => (LazyLoadingModelMeta v) => encode(v);
  dynamic encode(LazyLoadingModelMeta v) => toMap(v);
  Map<String, dynamic> toMap(LazyLoadingModelMeta l) => {'current_page': Mapper.i.$enc(l.currentPage, 'currentPage'), 'from': Mapper.i.$enc(l.from, 'from'), 'last_page': Mapper.i.$enc(l.lastPage, 'lastPage'), 'path': Mapper.i.$enc(l.path, 'path'), 'per_page': Mapper.i.$enc(l.perPage, 'perPage'), 'to': Mapper.i.$enc(l.to, 'to'), 'total': Mapper.i.$enc(l.total, 'total')};

  @override String stringify(LazyLoadingModelMeta self) => 'LazyLoadingModelMeta(currentPage: ${Mapper.asString(self.currentPage)}, from: ${Mapper.asString(self.from)}, lastPage: ${Mapper.asString(self.lastPage)}, path: ${Mapper.asString(self.path)}, perPage: ${Mapper.asString(self.perPage)}, to: ${Mapper.asString(self.to)}, total: ${Mapper.asString(self.total)})';
  @override int hash(LazyLoadingModelMeta self) => Mapper.hash(self.currentPage) ^ Mapper.hash(self.from) ^ Mapper.hash(self.lastPage) ^ Mapper.hash(self.path) ^ Mapper.hash(self.perPage) ^ Mapper.hash(self.to) ^ Mapper.hash(self.total);
  @override bool equals(LazyLoadingModelMeta self, LazyLoadingModelMeta other) => Mapper.isEqual(self.currentPage, other.currentPage) && Mapper.isEqual(self.from, other.from) && Mapper.isEqual(self.lastPage, other.lastPage) && Mapper.isEqual(self.path, other.path) && Mapper.isEqual(self.perPage, other.perPage) && Mapper.isEqual(self.to, other.to) && Mapper.isEqual(self.total, other.total);

  @override Function get typeFactory => (f) => f<LazyLoadingModelMeta>();
}

extension LazyLoadingModelMetaMapperExtension  on LazyLoadingModelMeta {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  LazyLoadingModelMetaCopyWith<LazyLoadingModelMeta> get copyWith => LazyLoadingModelMetaCopyWith(this, $identity);
}

abstract class LazyLoadingModelMetaCopyWith<$R> {
  factory LazyLoadingModelMetaCopyWith(LazyLoadingModelMeta value, Then<LazyLoadingModelMeta, $R> then) = _LazyLoadingModelMetaCopyWithImpl<$R>;
  $R call({int? currentPage, int? from, int? lastPage, String? path, dynamic perPage, int? to, int? total});
  $R apply(LazyLoadingModelMeta Function(LazyLoadingModelMeta) transform);
}

class _LazyLoadingModelMetaCopyWithImpl<$R> extends BaseCopyWith<LazyLoadingModelMeta, $R> implements LazyLoadingModelMetaCopyWith<$R> {
  _LazyLoadingModelMetaCopyWithImpl(LazyLoadingModelMeta value, Then<LazyLoadingModelMeta, $R> then) : super(value, then);

  @override $R call({int? currentPage, Object? from = $none, int? lastPage, String? path, Object? perPage = $none, Object? to = $none, int? total}) => $then(LazyLoadingModelMeta(currentPage: currentPage ?? $value.currentPage, from: or(from, $value.from), lastPage: lastPage ?? $value.lastPage, path: path ?? $value.path, perPage: or(perPage, $value.perPage), to: or(to, $value.to), total: total ?? $value.total));
}


// === GENERATED ENUM MAPPERS AND EXTENSIONS ===




// === GENERATED UTILITY CODE ===

class Mapper {
  Mapper._();

  static MapperContainer i = MapperContainer(_mappers);

  static T fromValue<T>(dynamic value) => i.fromValue<T>(value);
  static T fromMap<T>(Map<String, dynamic> map) => i.fromMap<T>(map);
  static T fromIterable<T>(Iterable<dynamic> iterable) => i.fromIterable<T>(iterable);
  static T fromJson<T>(String json) => i.fromJson<T>(json);

  static dynamic toValue(dynamic value) => i.toValue(value);
  static Map<String, dynamic> toMap(dynamic object) => i.toMap(object);
  static Iterable<dynamic> toIterable(dynamic object) => i.toIterable(object);
  static String toJson(dynamic object) => i.toJson(object);

  static bool isEqual(dynamic value, Object? other) => i.isEqual(value, other);
  static int hash(dynamic value) => i.hash(value);
  static String asString(dynamic value) => i.asString(value);

  static void use<T>(BaseMapper<T> mapper) => i.use<T>(mapper);
  static BaseMapper<T>? unuse<T>() => i.unuse<T>();
  static void useAll(List<BaseMapper> mappers) => i.useAll(mappers);

  static BaseMapper<T>? get<T>([Type? type]) => i.get<T>(type);
  static List<BaseMapper> getAll() => i.getAll();
}

mixin Mappable implements MappableMixin {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);

  @override
  String toString() {
    return _guard(() => Mapper.asString(this), super.toString);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            _guard(() => Mapper.isEqual(this, other), () => super == other));
  }

  @override
  int get hashCode {
    return _guard(() => Mapper.hash(this), () => super.hashCode);
  }

  T _guard<T>(T Function() fn, T Function() fallback) {
    try {
      return fn();
    } on MapperException catch (e) {
      if (e.isUnsupportedOrUnallowed()) {
        return fallback();
      } else {
        rethrow;
      }
    }
  }
}
