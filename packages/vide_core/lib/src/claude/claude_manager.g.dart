// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claude_manager.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider for managing agent clients.
///
/// keepAlive: true — this provider holds runtime agent client state that must
/// survive provider rebuilds. Auto-dispose causes "Cannot use Ref after disposed"
/// when AgentNetworkManager rebuilds while spawnAgent is in progress.

@ProviderFor(AgentClientManagerProvider)
final agentClientManagerProviderProvider =
    AgentClientManagerProviderProvider._();

/// Provider for managing agent clients.
///
/// keepAlive: true — this provider holds runtime agent client state that must
/// survive provider rebuilds. Auto-dispose causes "Cannot use Ref after disposed"
/// when AgentNetworkManager rebuilds while spawnAgent is in progress.
final class AgentClientManagerProviderProvider
    extends
        $NotifierProvider<
          AgentClientManagerProvider,
          Map<String, AgentClient>
        > {
  /// Provider for managing agent clients.
  ///
  /// keepAlive: true — this provider holds runtime agent client state that must
  /// survive provider rebuilds. Auto-dispose causes "Cannot use Ref after disposed"
  /// when AgentNetworkManager rebuilds while spawnAgent is in progress.
  AgentClientManagerProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'agentClientManagerProviderProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$agentClientManagerProviderHash();

  @$internal
  @override
  AgentClientManagerProvider create() => AgentClientManagerProvider();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Map<String, AgentClient> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Map<String, AgentClient>>(value),
    );
  }
}

String _$agentClientManagerProviderHash() =>
    r'20845de4b90969c92d6ce413fd335aa8145d2f95';

/// Provider for managing agent clients.
///
/// keepAlive: true — this provider holds runtime agent client state that must
/// survive provider rebuilds. Auto-dispose causes "Cannot use Ref after disposed"
/// when AgentNetworkManager rebuilds while spawnAgent is in progress.

abstract class _$AgentClientManagerProvider
    extends $Notifier<Map<String, AgentClient>> {
  Map<String, AgentClient> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<Map<String, AgentClient>, Map<String, AgentClient>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Map<String, AgentClient>, Map<String, AgentClient>>,
              Map<String, AgentClient>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
