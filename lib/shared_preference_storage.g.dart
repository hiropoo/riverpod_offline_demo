// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared_preference_storage.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(sharedPrefsStorage)
const sharedPrefsStorageProvider = SharedPrefsStorageProvider._();

final class SharedPrefsStorageProvider
    extends $FunctionalProvider<SharedPrefsStorage, SharedPrefsStorage>
    with $Provider<SharedPrefsStorage> {
  const SharedPrefsStorageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sharedPrefsStorageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sharedPrefsStorageHash();

  @$internal
  @override
  $ProviderElement<SharedPrefsStorage> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SharedPrefsStorage create(Ref ref) {
    return sharedPrefsStorage(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SharedPrefsStorage value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<SharedPrefsStorage>(value),
    );
  }
}

String _$sharedPrefsStorageHash() =>
    r'67d2c13eee0128e171b96f438362a6a33915b920';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
