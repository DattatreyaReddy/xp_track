// ignore_for_file: deprecated_member_use

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../constants/db_keys.dart';
import '../../../controllers/common_controllers.dart';
import '../../extensions/custom_extensions.dart';

/// [SharedPreferenceAsyncClient] is a mixin to add [_get] and [update] functions to
/// the provider.
/// this will first try to retrieve the value from the [_key] in the [_client].
///
/// if the value is not present in the [_client] then it will call the [_networkCall]
/// and update the [_client] with the value returned from the [_networkCall].
/// and then return the value.
///
/// if the value is present in the [_client] then it will return the value
/// and also make the api call to update the [_client] with the
/// latest value returned
///
/// * Remember to use [ initialize ] function to assign [key], [networkCall]
///    and decoder [fromJson] and encoder [toJson]
///   in [build] function of provider.
///
/// * [State] should not be a Nullable Type.
mixin SharedPreferenceAsyncClient<State extends Object> {
  // functions from AsyncNotifierProviderBase
  set state(AsyncValue<State?> newState);
  AsyncValue<State?> get state;

  late String _key;
  late SharedPreferences _client;
  late dynamic Function(State)? _toJson;
  late State? Function(dynamic)? _fromJson;
  late AsyncValueGetter<State?> _networkCall;
  AutoDisposeAsyncNotifierProviderRef<State?> get ref;

  FutureOr<State?>? initialize(
    DBKey key,
    AsyncValueGetter<State?> networkCall, {
    String Function(DBKey)? generateKey,
    dynamic Function(State)? toJson,
    State? Function(dynamic)? fromJson,
  }) async {
    _client = ref.watch(sharedPreferencesProvider);
    _key = generateKey != null ? generateKey(key) : key.name;
    _toJson = toJson;
    _fromJson = fromJson;
    _networkCall = networkCall;
    _persistenceRefreshLogic(ref);
    final storedValue = _get;
    if (storedValue != null) {
      updateStateWithNetworkCall();
      return storedValue;
    }
    return networkCall();
  }

  void updateStateWithNetworkCall() async {
    state = await AsyncValue.guard(() => _networkCall());
  }

  State? get _get {
    final value = _client.get(_key);
    if (_fromJson != null) {
      return _fromJson!(jsonDecode(value.toString()));
    }
    if (value != null && value is List) {
      // if value is List<Object> then the only possible type is List<String>
      // as SharedPreferences only saves List<String> type.
      // casting it to List<String> and then to T? to
      // avoid comparing List<Object> with T?.
      return value.map((e) => e.toString()).toList() as State?;
    }
    return value is State? ? value : null;
  }

  void _persistenceRefreshLogic(
          AutoDisposeAsyncNotifierProviderRef<State?> ref) =>
      ref.listenSelf((prev, next) {
        if (prev?.valueOrNull != next.valueOrNull) _set(next.valueOrNull);
      });

  Future<bool> _set(State? value) async {
    if (value == null) return _client.remove(_key);
    if (_toJson != null) {
      _client.setString(_key, jsonEncode(_toJson!(value)));
    }
    if (value is bool) {
      return await _client.setBool(_key, value);
    } else if (value is double) {
      return await _client.setDouble(_key, value);
    } else if (value is int) {
      return await _client.setInt(_key, value);
    } else if (value is String) {
      return await _client.setString(_key, value);
    } else if (value is List<String>) {
      return await _client.setStringList(_key, value);
    }
    return false;
  }
}

/// [SharedPreferenceClientMixin] is a mixin to add [_get] and [update] functions to
/// the provider.
///
/// * Remember to use [ initialize ] function to assign [key], [initial]
///   and decoder [fromJson] and encoder [toJson]
///   in [build] function of provider.
///
/// * optionally provide [initial] for giving initial value to the [key].
///
/// * [State] should not be a Nullable Type.
mixin SharedPreferenceClient<State extends Object> {
  late String _key;
  late SharedPreferences _client;
  late State? _initial;
  set state(State? newState);
  State? get state;
  late dynamic Function(State)? _toJson;
  late State? Function(dynamic)? _fromJson;
  AutoDisposeNotifierProviderRef<State?> get ref;

  State? initialize<U>(
    DBKey key, {
    State? initial,
    String Function(DBKey)? generateKey,
    dynamic Function(State)? toJson,
    State? Function(dynamic)? fromJson,
  }) {
    _client = ref.watch(sharedPreferencesProvider);
    _key = generateKey != null ? generateKey(key) : key.name;
    _initial = initial ?? key.initial;
    _toJson = toJson;
    _fromJson = fromJson;
    _persistenceRefreshLogic(ref);
    return _get ?? _initial;
  }

  void update(State? value) => state = value;

  void updateWithPreviousState(State? Function(State?) operation) =>
      state = operation(state);

  State? get _get {
    final value = _client.get(_key);
    if (_fromJson != null) {
      return _fromJson!(jsonDecode(value.toString()));
    }
    if (value != null && value is List) {
      // if value is List<Object> then the only possible type is List<String>
      // as SharedPreferences only saves List<String> type.
      // casting it to List<String> and then to T? to
      // avoid comparing List<Object> with T?.
      return value.map((e) => e.toString()).toList() as State?;
    }
    return value is State? ? value : _initial;
  }

  void _persistenceRefreshLogic(AutoDisposeNotifierProviderRef<State?> ref) =>
      ref.listenSelf((prev, next) {
        if (prev != next) _set(next);
      });

  Future<bool> _set(State? value) async {
    if (value == null) return _client.remove(_key);
    if (_toJson != null) {
      _client.setString(_key, jsonEncode(_toJson!(value)));
    }
    if (value is bool) {
      return await _client.setBool(_key, value);
    } else if (value is double) {
      return await _client.setDouble(_key, value);
    } else if (value is int) {
      return await _client.setInt(_key, value);
    } else if (value is String) {
      return await _client.setString(_key, value);
    } else if (value is List<String>) {
      return await _client.setStringList(_key, value);
    }
    return false;
  }
}

/// [SharedPreferenceEnumClientMixin] is a mixin to add [get] and [update] functions to
/// the provider.
///
/// * Remember to initialize [key], [enumList] in [build] function of provider
/// * optionally provide [initial] for giving initial value to the [key].
///
/// * [State] should be an [Enum] type and not a Nullable Type.
mixin SharedPreferenceEnumClient<State extends Enum> {
  late String _key;
  late SharedPreferences _client;
  State? _initial;
  late List<State> _enumList;
  set state(State? newState);
  AutoDisposeNotifierProviderRef<State?> get ref;

  State? initialize(
    DBKey key, {
    required List<State> enumList,
    State? initial,
  }) {
    _client = ref.watch(sharedPreferencesProvider);
    _key = key.name;
    _initial = initial ?? key.initial;
    _enumList = enumList;
    _persistenceRefreshLogic(ref);
    return _get;
  }

  void update(State? value) => state = value;

  State? _getEnumFromIndex(int? value) =>
      value.liesBetween(upper: _enumList.length - 1)
          ? _enumList[value!]
          : _initial;

  State? get _get => _getEnumFromIndex(_client.getInt(_key));

  Future<bool> _set(int? value) {
    if (value == null) return _client.remove(_key);
    return _client.setInt(_key, value);
  }

  void _persistenceRefreshLogic(AutoDisposeNotifierProviderRef<State?> ref) =>
      ref.listenSelf(
        (prev, next) {
          if (prev != next) {
            _set(next == null ? null : _enumList.indexOf(next));
          }
        },
      );
}
