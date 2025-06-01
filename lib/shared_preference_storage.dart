import 'dart:convert';

import 'package:flutter_riverpod/experimental/persist.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_offline_test/main.dart';
import 'package:riverpod_offline_test/model/freezed_persisted.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'shared_preference_storage.g.dart';

class SharedPrefsStorage implements Storage<String, String> {
  final SharedPreferences _prefs;
  SharedPrefsStorage(this._prefs);

  @override
  FutureOr<void> delete(String key) async {
    final prefs = _prefs;
    await prefs.remove(key);
  }

  @override
  FutureOr<PersistedData<String>?> read(String key) async {
    final prefs = _prefs;
    final result = prefs.getString(key);

    if (result == null) return null;

    final data = FreezedPersistedData.fromJson(jsonDecode(result));

    return PersistedData<String>(
      data.value,
      destroyKey: data.destroyKey,
      expireAt: data.expireAt,
    );
  }

  @override
  FutureOr<void> write(String key, String value, StorageOptions options) async {
    final prefs = _prefs;
    final duration = options.cacheTime.duration;
    final json = jsonEncode(
      FreezedPersistedData(
        value: value,
        destroyKey: options.destroyKey,
        expireAt: duration == null ? null : DateTime.now().add(duration),
      ).toJson(),
    );
    await prefs.setString(key, json);
  }
}

@riverpod
SharedPrefsStorage sharedPrefsStorage(Ref ref) {
  final sharedPrefs = ref.watch(sharedPreferencesProvider);
  return SharedPrefsStorage(sharedPrefs);
}
