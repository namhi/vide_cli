// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auto_update_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Service that handles checking for updates and downloading them

@ProviderFor(AutoUpdateService)
final autoUpdateServiceProvider = AutoUpdateServiceProvider._();

/// Service that handles checking for updates and downloading them
final class AutoUpdateServiceProvider
    extends $NotifierProvider<AutoUpdateService, UpdateState> {
  /// Service that handles checking for updates and downloading them
  AutoUpdateServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'autoUpdateServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$autoUpdateServiceHash();

  @$internal
  @override
  AutoUpdateService create() => AutoUpdateService();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UpdateState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UpdateState>(value),
    );
  }
}

String _$autoUpdateServiceHash() => r'13b0e46ce6cab0776a8ffae60fd5e946dfebd514';

/// Service that handles checking for updates and downloading them

abstract class _$AutoUpdateService extends $Notifier<UpdateState> {
  UpdateState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<UpdateState, UpdateState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<UpdateState, UpdateState>,
              UpdateState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
