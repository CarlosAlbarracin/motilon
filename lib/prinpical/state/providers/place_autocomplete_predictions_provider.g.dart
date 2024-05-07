// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_autocomplete_predictions_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$placeAutocompletePredictionsHash() =>
    r'b8a511f80859029031a9ad20992a22ba2223ddab';

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

/// See also [placeAutocompletePredictions].
@ProviderFor(placeAutocompletePredictions)
const placeAutocompletePredictionsProvider =
    PlaceAutocompletePredictionsFamily();

/// See also [placeAutocompletePredictions].
class PlaceAutocompletePredictionsFamily
    extends Family<AsyncValue<List<PlaceAutocompletePrediction>>> {
  /// See also [placeAutocompletePredictions].
  const PlaceAutocompletePredictionsFamily();

  /// See also [placeAutocompletePredictions].
  PlaceAutocompletePredictionsProvider call(
    String input,
  ) {
    return PlaceAutocompletePredictionsProvider(
      input,
    );
  }

  @override
  PlaceAutocompletePredictionsProvider getProviderOverride(
    covariant PlaceAutocompletePredictionsProvider provider,
  ) {
    return call(
      provider.input,
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
  String? get name => r'placeAutocompletePredictionsProvider';
}

/// See also [placeAutocompletePredictions].
class PlaceAutocompletePredictionsProvider
    extends AutoDisposeFutureProvider<List<PlaceAutocompletePrediction>> {
  /// See also [placeAutocompletePredictions].
  PlaceAutocompletePredictionsProvider(
    String input,
  ) : this._internal(
          (ref) => placeAutocompletePredictions(
            ref as PlaceAutocompletePredictionsRef,
            input,
          ),
          from: placeAutocompletePredictionsProvider,
          name: r'placeAutocompletePredictionsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$placeAutocompletePredictionsHash,
          dependencies: PlaceAutocompletePredictionsFamily._dependencies,
          allTransitiveDependencies:
              PlaceAutocompletePredictionsFamily._allTransitiveDependencies,
          input: input,
        );

  PlaceAutocompletePredictionsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.input,
  }) : super.internal();

  final String input;

  @override
  Override overrideWith(
    FutureOr<List<PlaceAutocompletePrediction>> Function(
            PlaceAutocompletePredictionsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PlaceAutocompletePredictionsProvider._internal(
        (ref) => create(ref as PlaceAutocompletePredictionsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        input: input,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<PlaceAutocompletePrediction>>
      createElement() {
    return _PlaceAutocompletePredictionsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PlaceAutocompletePredictionsProvider &&
        other.input == input;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, input.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PlaceAutocompletePredictionsRef
    on AutoDisposeFutureProviderRef<List<PlaceAutocompletePrediction>> {
  /// The parameter `input` of this provider.
  String get input;
}

class _PlaceAutocompletePredictionsProviderElement
    extends AutoDisposeFutureProviderElement<List<PlaceAutocompletePrediction>>
    with PlaceAutocompletePredictionsRef {
  _PlaceAutocompletePredictionsProviderElement(super.provider);

  @override
  String get input => (origin as PlaceAutocompletePredictionsProvider).input;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
