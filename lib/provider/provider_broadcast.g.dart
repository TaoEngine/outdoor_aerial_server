// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider_broadcast.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Broadcast)
const broadcastProvider = BroadcastFamily._();

final class BroadcastProvider
    extends $StreamNotifierProvider<Broadcast, Uint8List> {
  const BroadcastProvider._({
    required BroadcastFamily super.from,
    required BroadcastServiceConfig super.argument,
  }) : super(
         retry: null,
         name: r'broadcastProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$broadcastHash();

  @override
  String toString() {
    return r'broadcastProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  Broadcast create() => Broadcast();

  @override
  bool operator ==(Object other) {
    return other is BroadcastProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$broadcastHash() => r'a8f81c4e7d5bf622707084def66f5b678ce90a21';

final class BroadcastFamily extends $Family
    with
        $ClassFamilyOverride<
          Broadcast,
          AsyncValue<Uint8List>,
          Uint8List,
          Stream<Uint8List>,
          BroadcastServiceConfig
        > {
  const BroadcastFamily._()
    : super(
        retry: null,
        name: r'broadcastProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  BroadcastProvider call(BroadcastServiceConfig config) =>
      BroadcastProvider._(argument: config, from: this);

  @override
  String toString() => r'broadcastProvider';
}

abstract class _$Broadcast extends $StreamNotifier<Uint8List> {
  late final _$args = ref.$arg as BroadcastServiceConfig;
  BroadcastServiceConfig get config => _$args;

  Stream<Uint8List> build(BroadcastServiceConfig config);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<AsyncValue<Uint8List>, Uint8List>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Uint8List>, Uint8List>,
              AsyncValue<Uint8List>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
