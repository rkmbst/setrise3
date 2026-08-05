import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../features/studio/providers/studio_providers.dart';
import '../features/studio/services/studio_services.dart';

/// Centralised bootstrap that wires production overrides into a single
/// [ProviderContainer]. This indirection keeps `main.dart` tiny while making
/// it trivial to swap real implementations for fakes during tests.
class AppBootstrap {
  Future<ProviderContainer> compose() async {
    final container = ProviderContainer(
      overrides: [
        ..._coreOverrides,
        ...studioServiceOverrides,
        ...studioProviderOverrides,
      ],
    );

    // Eagerly warm-up critical singletons (drift DB, ML Kit, camera).
    await container.read(studioServiceProvider).initialize();

    return container;
  }

  List<Override> get _coreOverrides => const [];
}
