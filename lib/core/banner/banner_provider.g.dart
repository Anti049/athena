// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bannerHash() => r'fede420c6eb099a33890aa9af1a58a15f2e8a0a5';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$Banner
    extends BuildlessAutoDisposeNotifier<Pair<bool, String>> {
  late final String key;

  Pair<bool, String> build(
    String key,
  );
}

/// See also [Banner].
@ProviderFor(Banner)
const bannerProvider = BannerFamily();

/// See also [Banner].
class BannerFamily extends Family<Pair<bool, String>> {
  /// See also [Banner].
  const BannerFamily();

  /// See also [Banner].
  BannerProvider call(
    String key,
  ) {
    return BannerProvider(
      key,
    );
  }

  @override
  BannerProvider getProviderOverride(
    covariant BannerProvider provider,
  ) {
    return call(
      provider.key,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'bannerProvider';
}

/// See also [Banner].
class BannerProvider
    extends AutoDisposeNotifierProviderImpl<Banner, Pair<bool, String>> {
  /// See also [Banner].
  BannerProvider(
    String key,
  ) : this._internal(
          () => Banner()..key = key,
          from: bannerProvider,
          name: r'bannerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bannerHash,
          dependencies: BannerFamily._dependencies,
          allTransitiveDependencies: BannerFamily._allTransitiveDependencies,
          key: key,
        );

  BannerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.key,
  }) : super.internal();

  final String key;

  @override
  Pair<bool, String> runNotifierBuild(
    covariant Banner notifier,
  ) {
    return notifier.build(
      key,
    );
  }

  @override
  Override overrideWith(Banner Function() create) {
    return ProviderOverride(
      origin: this,
      override: BannerProvider._internal(
        () => create()..key = key,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        key: key,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<Banner, Pair<bool, String>>
      createElement() {
    return _BannerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BannerProvider && other.key == key;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin BannerRef on AutoDisposeNotifierProviderRef<Pair<bool, String>> {
  /// The parameter `key` of this provider.
  String get key;
}

class _BannerProviderElement
    extends AutoDisposeNotifierProviderElement<Banner, Pair<bool, String>>
    with BannerRef {
  _BannerProviderElement(super.provider);

  @override
  String get key => (origin as BannerProvider).key;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
