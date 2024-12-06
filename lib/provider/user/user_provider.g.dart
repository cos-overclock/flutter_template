// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userHash() => r'5bdadcbfbc9d5370c32f00ff648ac193fe0203fd';

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

/// See also [user].
@ProviderFor(user)
const userProvider = UserFamily();

/// See also [user].
class UserFamily extends Family<AsyncValue<User>> {
  /// See also [user].
  const UserFamily();

  /// See also [user].
  UserProvider call(
    int id,
  ) {
    return UserProvider(
      id,
    );
  }

  @override
  UserProvider getProviderOverride(
    covariant UserProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'userProvider';
}

/// See also [user].
class UserProvider extends AutoDisposeStreamProvider<User> {
  /// See also [user].
  UserProvider(
    int id,
  ) : this._internal(
          (ref) => user(
            ref as UserRef,
            id,
          ),
          from: userProvider,
          name: r'userProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$userHash,
          dependencies: UserFamily._dependencies,
          allTransitiveDependencies: UserFamily._allTransitiveDependencies,
          id: id,
        );

  UserProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    Stream<User> Function(UserRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UserProvider._internal(
        (ref) => create(ref as UserRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<User> createElement() {
    return _UserProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UserRef on AutoDisposeStreamProviderRef<User> {
  /// The parameter `id` of this provider.
  int get id;
}

class _UserProviderElement extends AutoDisposeStreamProviderElement<User>
    with UserRef {
  _UserProviderElement(super.provider);

  @override
  int get id => (origin as UserProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
