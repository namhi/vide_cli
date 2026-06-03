import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../logging/vide_logger.dart';
import '../models/agent_id.dart';
import '../models/agent_status.dart';

part 'agent_status_manager.g.dart';

/// Provider for managing agent status.
///
/// Each agent has its own status that can be set via the `setAgentStatus` MCP tool.
/// Default status is `idle` since agents may be created during session resume
/// without an active turn. The status sync service will set `working` when
/// a turn begins.
@riverpod
class AgentStatusProvider extends _$AgentStatusProvider {
  @override
  AgentStatus build(AgentId agentId) {
    return AgentStatus.idle;
  }

  /// Set the agent's status.
  void setStatus(AgentStatus status) {
    final oldStatus = state;
    if (oldStatus == status) return;
    VideLogger.instance.debug(
      'AgentStatusProvider',
      'Agent $agentId status: ${oldStatus.name} -> ${status.name}',
    );
    state = status;
  }
}

// Legacy compatibility
typedef AgentStatusNotifier = AgentStatusProvider;

// Backward compatibility alias - the generated provider is agentStatusProviderProvider
// But for code that calls agentStatusProvider(id), we need to use the family directly
final agentStatusProvider = agentStatusProviderProvider;
