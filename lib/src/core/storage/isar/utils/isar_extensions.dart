import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';

import '../domain/page_request.dart';
import '../dto/page_result.dart';

abstract class _CustomQueries {
  static Future<PageResult<R>> page<OBJ, R, T extends QOffset>(
    PageRequest pageRequest,
    AsyncValueGetter<int> count,
    QueryBuilder<OBJ, R, T> query,
  ) async {
    final totalElements = await count();

    final content = totalElements > 0
        ? await query
            .offset(pageRequest.page * pageRequest.size)
            .limit(pageRequest.size)
            .findAll()
        : <R>[];
    final totalPages = (totalElements / pageRequest.size).ceil();
    return PageResult(
      content: content,
      pageRequest: pageRequest,
      totalPages: totalPages,
      totalElements: totalElements,
    );
  }
}

extension QWhereCustomExtension<OBJ, R> on QueryBuilder<OBJ, R, QWhere> {
  Future<PageResult<R>> page(PageRequest pageRequest) =>
      _CustomQueries.page(pageRequest, count, this);
}

extension QAfterWhereCustomExtension<OBJ, R>
    on QueryBuilder<OBJ, R, QAfterWhere> {
  Future<PageResult<R>> page(PageRequest pageRequest) =>
      _CustomQueries.page(pageRequest, count, this);
}

extension QAfterWhereClauseCustomExtension<OBJ, R>
    on QueryBuilder<OBJ, R, QAfterWhereClause> {
  Future<PageResult<R>> page(PageRequest pageRequest) =>
      _CustomQueries.page(pageRequest, count, this);
}

extension QAfterFilterConditionCustomExtension<OBJ, R>
    on QueryBuilder<OBJ, R, QAfterFilterCondition> {
  Future<PageResult<R>> page(PageRequest pageRequest) =>
      _CustomQueries.page(pageRequest, count, this);
}

extension QAfterSortByCustomExtension<OBJ, R>
    on QueryBuilder<OBJ, R, QAfterSortBy> {
  Future<PageResult<R>> page(PageRequest pageRequest) =>
      _CustomQueries.page(pageRequest, count, this);
}

extension QDistinctCustomExtension<OBJ, R> on QueryBuilder<OBJ, R, QDistinct> {
  Future<PageResult<R>> page(PageRequest pageRequest) =>
      _CustomQueries.page(pageRequest, count, this);
}
