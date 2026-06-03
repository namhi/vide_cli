import 'package:agent_sdk/agent_sdk.dart';
import '../logging/vide_logger.dart';
import '../models/agent_id.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'claude_manager.g.dart';

/// Provider for managing agent clients.
///
/// keepAlive: true — this provider holds runtime agent client state that must
/// survive provider rebuilds. Auto-dispose causes "Cannot use Ref after disposed"
/// when AgentNetworkManager rebuilds while spawnAgent is in progress.
@Riverpod(keepAlive: true)
class AgentClientManagerProvider extends _$AgentClientManagerProvider {
  @override
  Map<String, AgentClient> build() {
    return {};
  }

  /// Public read-only access to the current client map.
  ///
  /// Use this instead of the protected [state] getter when accessing
  /// from outside the Notifier subclass.
  Map<String, AgentClient> get clients => state;

  void addAgent(String agentId, AgentClient client) {
    VideLogger.instance.debug(
      'AgentClientManager',
      'addAgent: id=$agentId (total=${state.length + 1})',
    );
    state = {...state, agentId: client};
  }

  void removeAgent(String agentId) {
    VideLogger.instance.debug(
      'AgentClientManager',
      'removeAgent: id=$agentId (total=${state.length - 1})',
    );
    state = {...state}..remove(agentId);
  }
}

/// Provider for accessing a specific agent client by ID.
final agentClientProvider = Provider.family<AgentClient?, AgentId>((
  ref,
  agentId,
) {
  return ref.watch(agentClientManagerProvider)[agentId];
});

// Legacy compatibility - backward compatibility alias
final agentClientManagerProvider = agentClientManagerProviderProvider;
typedef AgentClientManagerStateNotifier = AgentClientManagerProvider;
