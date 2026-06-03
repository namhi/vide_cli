// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_network_manager.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider for the agent network manager.

@ProviderFor(AgentNetworkManager)
final agentNetworkManagerProvider = AgentNetworkManagerProvider._();

/// Provider for the agent network manager.
final class AgentNetworkManagerProvider
    extends $NotifierProvider<AgentNetworkManager, AgentNetworkState> {
  /// Provider for the agent network manager.
  AgentNetworkManagerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'agentNetworkManagerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$agentNetworkManagerHash();

  @$internal
  @override
  AgentNetworkManager create() => AgentNetworkManager();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AgentNetworkState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AgentNetworkState>(value),
    );
  }
}

String _$agentNetworkManagerHash() =>
    r'e30d85a9f0ab6eecdb6fd9e009ecc3aa1dda6a68';

/// Provider for the agent network manager.

abstract class _$AgentNetworkManager extends $Notifier<AgentNetworkState> {
  AgentNetworkState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AgentNetworkState, AgentNetworkState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AgentNetworkState, AgentNetworkState>,
              AgentNetworkState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
