// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_status_manager.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider for managing agent status.
///
/// Each agent has its own status that can be set via the `setAgentStatus` MCP tool.
/// Default status is `idle` since agents may be created during session resume
/// without an active turn. The status sync service will set `working` when
/// a turn begins.

@ProviderFor(AgentStatusProvider)
final agentStatusProviderProvider = AgentStatusProviderFamily._();

/// Provider for managing agent status.
///
/// Each agent has its own status that can be set via the `setAgentStatus` MCP tool.
/// Default status is `idle` since agents may be created during session resume
/// without an active turn. The status sync service will set `working` when
/// a turn begins.
final class AgentStatusProviderProvider
    extends $NotifierProvider<AgentStatusProvider, AgentStatus> {
  /// Provider for managing agent status.
  ///
  /// Each agent has its own status that can be set via the `setAgentStatus` MCP tool.
  /// Default status is `idle` since agents may be created during session resume
  /// without an active turn. The status sync service will set `working` when
  /// a turn begins.
  AgentStatusProviderProvider._({
    required AgentStatusProviderFamily super.from,
    required AgentId super.argument,
  }) : super(
         retry: null,
         name: r'agentStatusProviderProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$agentStatusProviderHash();

  @override
  String toString() {
    return r'agentStatusProviderProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  AgentStatusProvider create() => AgentStatusProvider();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AgentStatus value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AgentStatus>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is AgentStatusProviderProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$agentStatusProviderHash() =>
    r'f308f47c6bb27bdd5bcfce65042bd8ad7c87b113';

/// Provider for managing agent status.
///
/// Each agent has its own status that can be set via the `setAgentStatus` MCP tool.
/// Default status is `idle` since agents may be created during session resume
/// without an active turn. The status sync service will set `working` when
/// a turn begins.

final class AgentStatusProviderFamily extends $Family
    with
        $ClassFamilyOverride<
          AgentStatusProvider,
          AgentStatus,
          AgentStatus,
          AgentStatus,
          AgentId
        > {
  AgentStatusProviderFamily._()
    : super(
        retry: null,
        name: r'agentStatusProviderProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Provider for managing agent status.
  ///
  /// Each agent has its own status that can be set via the `setAgentStatus` MCP tool.
  /// Default status is `idle` since agents may be created during session resume
  /// without an active turn. The status sync service will set `working` when
  /// a turn begins.

  AgentStatusProviderProvider call(AgentId agentId) =>
      AgentStatusProviderProvider._(argument: agentId, from: this);

  @override
  String toString() => r'agentStatusProviderProvider';
}

/// Provider for managing agent status.
///
/// Each agent has its own status that can be set via the `setAgentStatus` MCP tool.
/// Default status is `idle` since agents may be created during session resume
/// without an active turn. The status sync service will set `working` when
/// a turn begins.

abstract class _$AgentStatusProvider extends $Notifier<AgentStatus> {
  late final _$args = ref.$arg as AgentId;
  AgentId get agentId => _$args;

  AgentStatus build(AgentId agentId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AgentStatus, AgentStatus>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AgentStatus, AgentStatus>,
              AgentStatus,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
