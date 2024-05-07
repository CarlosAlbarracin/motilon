// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_route_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$selectedRouteHash() => r'ffbe6dda10586deb822ad391e36bdac8c70e85c4';

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

/// See also [selectedRoute].
@ProviderFor(selectedRoute)
const selectedRouteProvider = SelectedRouteFamily();

/// See also [selectedRoute].
class SelectedRouteFamily extends Family<AsyncValue<Rutas?>> {
  /// See also [selectedRoute].
  const SelectedRouteFamily();

  /// See also [selectedRoute].
  SelectedRouteProvider call(
    String titulo,
  ) {
    return SelectedRouteProvider(
      titulo,
    );
  }

  @override
  SelectedRouteProvider getProviderOverride(
    covariant SelectedRouteProvider provider,
  ) {
    return call(
      provider.titulo,
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
  String? get name => r'selectedRouteProvider';
}

/// See also [selectedRoute].
class SelectedRouteProvider extends AutoDisposeFutureProvider<Rutas?> {
  /// See also [selectedRoute].
  SelectedRouteProvider(
    String titulo,
  ) : this._internal(
          (ref) => selectedRoute(
            ref as SelectedRouteRef,
            titulo,
          ),
          from: selectedRouteProvider,
          name: r'selectedRouteProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$selectedRouteHash,
          dependencies: SelectedRouteFamily._dependencies,
          allTransitiveDependencies:
              SelectedRouteFamily._allTransitiveDependencies,
          titulo: titulo,
        );

  SelectedRouteProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.titulo,
  }) : super.internal();

  final String titulo;

  @override
  Override overrideWith(
    FutureOr<Rutas?> Function(SelectedRouteRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SelectedRouteProvider._internal(
        (ref) => create(ref as SelectedRouteRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        titulo: titulo,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Rutas?> createElement() {
    return _SelectedRouteProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SelectedRouteProvider && other.titulo == titulo;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, titulo.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SelectedRouteRef on AutoDisposeFutureProviderRef<Rutas?> {
  /// The parameter `titulo` of this provider.
  String get titulo;
}

class _SelectedRouteProviderElement
    extends AutoDisposeFutureProviderElement<Rutas?> with SelectedRouteRef {
  _SelectedRouteProviderElement(super.provider);

  @override
  String get titulo => (origin as SelectedRouteProvider).titulo;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
