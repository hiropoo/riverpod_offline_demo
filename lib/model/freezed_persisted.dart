// Riverpodの必要な情報を保持するためのfreezedデータクラス
import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_persisted.freezed.dart';
part 'freezed_persisted.g.dart';

@freezed
abstract class FreezedPersistedData with _$FreezedPersistedData {
  const factory FreezedPersistedData({
    required String value,
    required String? destroyKey,
    required DateTime? expireAt,
  }) = _FreezedPersistedData;

  factory FreezedPersistedData.fromJson(Map<String, dynamic> json) =>
      _$FreezedPersistedDataFromJson(json);
}
