// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_placesT_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$selectedPlacesHash() => r'8dd028a04b404bdcd4aaa6e22b3a53f4dc2297ae';

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

/// See also [selectedPlaces].
@ProviderFor(selectedPlaces)
const selectedPlacesProvider = SelectedPlacesFamily();

/// See also [selectedPlaces].
class SelectedPlacesFamily extends Family<AsyncValue<PlacesTourist?>> {
  /// See also [selectedPlaces].
  const SelectedPlacesFamily();

  /// See also [selectedPlaces].
  SelectedPlacesProvider call(
    String nombre,
  ) {
    return SelectedPlacesProvider(
      nombre,
    );
  }

  @override
  SelectedPlacesProvider getProviderOverride(
    covariant SelectedPlacesProvider provider,
  ) {
    return call(
      provider.nombre,
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
  String? get name => r'selectedPlacesProvider';
}

/// See also [selectedPlaces].
class SelectedPlacesProvider extends AutoDisposeFutureProvider<PlacesTourist?> {
  /// See also [selectedPlaces].
  SelectedPlacesProvider(
    String nombre,
  ) : this._internal(
          (ref) => selectedPlaces(
            ref as SelectedPlacesRef,
            nombre,
          ),
          from: selectedPlacesProvider,
          name: r'selectedPlacesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$selectedPlacesHash,
          dependencies: SelectedPlacesFamily._dependencies,
          allTransitiveDependencies:
              SelectedPlacesFamily._allTransitiveDependencies,
          nombre: nombre,
        );

  SelectedPlacesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.nombre,
  }) : super.internal();

  final String nombre;

  @override
  Override overrideWith(
    FutureOr<PlacesTourist?> Function(SelectedPlacesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SelectedPlacesProvider._internal(
        (ref) => create(ref as SelectedPlacesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        nombre: nombre,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<PlacesTourist?> createElement() {
    return _SelectedPlacesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SelectedPlacesProvider && other.nombre == nombre;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, nombre.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SelectedPlacesRef on AutoDisposeFutureProviderRef<PlacesTourist?> {
  /// The parameter `nombre` of this provider.
  String get nombre;
}

class _SelectedPlacesProviderElement
    extends AutoDisposeFutureProviderElement<PlacesTourist?>
    with SelectedPlacesRef {
  _SelectedPlacesProviderElement(super.provider);

  @override
  String get nombre => (origin as SelectedPlacesProvider).nombre;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
