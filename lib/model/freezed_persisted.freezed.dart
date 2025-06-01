// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'freezed_persisted.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FreezedPersistedData {

 String get value; String? get destroyKey; DateTime? get expireAt;
/// Create a copy of FreezedPersistedData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FreezedPersistedDataCopyWith<FreezedPersistedData> get copyWith => _$FreezedPersistedDataCopyWithImpl<FreezedPersistedData>(this as FreezedPersistedData, _$identity);

  /// Serializes this FreezedPersistedData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FreezedPersistedData&&(identical(other.value, value) || other.value == value)&&(identical(other.destroyKey, destroyKey) || other.destroyKey == destroyKey)&&(identical(other.expireAt, expireAt) || other.expireAt == expireAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,destroyKey,expireAt);

@override
String toString() {
  return 'FreezedPersistedData(value: $value, destroyKey: $destroyKey, expireAt: $expireAt)';
}


}

/// @nodoc
abstract mixin class $FreezedPersistedDataCopyWith<$Res>  {
  factory $FreezedPersistedDataCopyWith(FreezedPersistedData value, $Res Function(FreezedPersistedData) _then) = _$FreezedPersistedDataCopyWithImpl;
@useResult
$Res call({
 String value, String? destroyKey, DateTime? expireAt
});




}
/// @nodoc
class _$FreezedPersistedDataCopyWithImpl<$Res>
    implements $FreezedPersistedDataCopyWith<$Res> {
  _$FreezedPersistedDataCopyWithImpl(this._self, this._then);

  final FreezedPersistedData _self;
  final $Res Function(FreezedPersistedData) _then;

/// Create a copy of FreezedPersistedData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,Object? destroyKey = freezed,Object? expireAt = freezed,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,destroyKey: freezed == destroyKey ? _self.destroyKey : destroyKey // ignore: cast_nullable_to_non_nullable
as String?,expireAt: freezed == expireAt ? _self.expireAt : expireAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _FreezedPersistedData implements FreezedPersistedData {
  const _FreezedPersistedData({required this.value, required this.destroyKey, required this.expireAt});
  factory _FreezedPersistedData.fromJson(Map<String, dynamic> json) => _$FreezedPersistedDataFromJson(json);

@override final  String value;
@override final  String? destroyKey;
@override final  DateTime? expireAt;

/// Create a copy of FreezedPersistedData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FreezedPersistedDataCopyWith<_FreezedPersistedData> get copyWith => __$FreezedPersistedDataCopyWithImpl<_FreezedPersistedData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FreezedPersistedDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FreezedPersistedData&&(identical(other.value, value) || other.value == value)&&(identical(other.destroyKey, destroyKey) || other.destroyKey == destroyKey)&&(identical(other.expireAt, expireAt) || other.expireAt == expireAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,destroyKey,expireAt);

@override
String toString() {
  return 'FreezedPersistedData(value: $value, destroyKey: $destroyKey, expireAt: $expireAt)';
}


}

/// @nodoc
abstract mixin class _$FreezedPersistedDataCopyWith<$Res> implements $FreezedPersistedDataCopyWith<$Res> {
  factory _$FreezedPersistedDataCopyWith(_FreezedPersistedData value, $Res Function(_FreezedPersistedData) _then) = __$FreezedPersistedDataCopyWithImpl;
@override @useResult
$Res call({
 String value, String? destroyKey, DateTime? expireAt
});




}
/// @nodoc
class __$FreezedPersistedDataCopyWithImpl<$Res>
    implements _$FreezedPersistedDataCopyWith<$Res> {
  __$FreezedPersistedDataCopyWithImpl(this._self, this._then);

  final _FreezedPersistedData _self;
  final $Res Function(_FreezedPersistedData) _then;

/// Create a copy of FreezedPersistedData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,Object? destroyKey = freezed,Object? expireAt = freezed,}) {
  return _then(_FreezedPersistedData(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,destroyKey: freezed == destroyKey ? _self.destroyKey : destroyKey // ignore: cast_nullable_to_non_nullable
as String?,expireAt: freezed == expireAt ? _self.expireAt : expireAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
