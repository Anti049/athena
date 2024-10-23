import 'dart:async';

import 'package:drift/drift.dart';

class Works extends Table with TableInfo<Works, Work> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Works(this.attachedDatabase, [this._alias]);

  static const VerificationMeta _idMeta = VerificationMeta('id');
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      '_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL PRIMARY KEY');
  static const VerificationMeta _sourceMeta = VerificationMeta('source');
  late final GeneratedColumn<int> source = GeneratedColumn<int>(
      'source', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _urlMeta = VerificationMeta('url');
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
      'url', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _titleMeta = VerificationMeta('title');
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');

  @override
  List<GeneratedColumn<Object>> get $columns => [
        id,
        source,
        url,
        title,
      ];

  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'works';

  @override
  VerificationContext validateIntegrity(Insertable<Work> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);

    if (data.containsKey('_id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['_id']!, _idMeta));
    }
    if (data.containsKey('source')) {
      context.handle(_sourceMeta,
          source.isAcceptableOrUnknown(data['source']!, _sourceMeta));
    } else if (isInserting) {
      context.missing(_sourceMeta);
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }

    return context;
  }

  @override
  FutureOr<Work> map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;

    return Work(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}_id'])!,
      source: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}source'])!,
      url: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}url'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
    );
  }

  @override
  TableInfo<Works, Work> createAlias(String alias) {
    return Works(attachedDatabase, alias);
  }
}

class Work extends DataClass implements Insertable<Work> {
  final int id;
  final int source;
  final String url;
  final String title;

  Work({
    required this.id,
    required this.source,
    required this.url,
    required this.title,
  });

  @override
  Map<String, Expression<Object>> toColumns(
    bool nullToAbsent,
  ) {
    final map = <String, Expression>{};

    map['_id'] = Variable<int>(id);
    map['source'] = Variable<int>(source);
    map['url'] = Variable<String>(url);
    map['title'] = Variable<String>(title);

    return map;
  }

  @override
  Map<String, dynamic> toJson({
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return {
      '_id': serializer.toJson<int>(id),
      'source': serializer.toJson<int>(source),
      'url': serializer.toJson<String>(url),
      'title': serializer.toJson<String>(title),
    };
  }

  factory Work.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Work(
      id: serializer.fromJson<int>(json['_id']),
      source: serializer.fromJson<int>(json['source']),
      url: serializer.fromJson<String>(json['url']),
      title: serializer.fromJson<String>(json['title']),
    );
  }

  Work copyWith({
    int? id,
    int? source,
    String? url,
    String? title,
  }) {
    return Work(
      id: id ?? this.id,
      source: source ?? this.source,
      url: url ?? this.url,
      title: title ?? this.title,
    );
  }

  @override
  String toString() {
    return (
      StringBuffer('Work(')
        ..write('id: $id, ')
        ..write('source: $source, ')
        ..write('url: $url, ')
        ..write('title: $title')
        ..write(')'),
    ).toString();
  }
}
