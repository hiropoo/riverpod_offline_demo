// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freezed_persisted.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FreezedPersistedData _$FreezedPersistedDataFromJson(
  Map<String, dynamic> json,
) => _FreezedPersistedData(
  value: json['value'] as String,
  destroyKey: json['destroyKey'] as String?,
  expireAt:
      json['expireAt'] == null
          ? null
          : DateTime.parse(json['expireAt'] as String),
);

Map<String, dynamic> _$FreezedPersistedDataToJson(
  _FreezedPersistedData instance,
) => <String, dynamic>{
  'value': instance.value,
  'destroyKey': instance.destroyKey,
  'expireAt': instance.expireAt?.toIso8601String(),
};
