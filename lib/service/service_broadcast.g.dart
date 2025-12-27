// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_broadcast.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 接收广播音频

@ProviderFor(BroadcastService)
const broadcastServiceProvider = BroadcastServiceFamily._();

/// 接收广播音频
final class BroadcastServiceProvider
    extends $StreamNotifierProvider<BroadcastService, Uint8List> {
  /// 接收广播音频
  const BroadcastServiceProvider._({
    required BroadcastServiceFamily super.from,
    required BroadcastConfig super.argument,
  }) : super(
         retry: null,
         name: r'broadcastServiceProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$broadcastServiceHash();

  @override
  String toString() {
    return r'broadcastServiceProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  BroadcastService create() => BroadcastService();

  @override
  bool operator ==(Object other) {
    return other is BroadcastServiceProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$broadcastServiceHash() => r'012a99f95dfe85535c94ae5e6fb475e9fc7eef9f';

/// 接收广播音频

final class BroadcastServiceFamily extends $Family
    with
        $ClassFamilyOverride<
          BroadcastService,
          AsyncValue<Uint8List>,
          Uint8List,
          Stream<Uint8List>,
          BroadcastConfig
        > {
  const BroadcastServiceFamily._()
    : super(
        retry: null,
        name: r'broadcastServiceProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// 接收广播音频

  BroadcastServiceProvider call(BroadcastConfig config) =>
      BroadcastServiceProvider._(argument: config, from: this);

  @override
  String toString() => r'broadcastServiceProvider';
}

/// 接收广播音频

abstract class _$BroadcastService extends $StreamNotifier<Uint8List> {
  late final _$args = ref.$arg as BroadcastConfig;
  BroadcastConfig get config => _$args;

  Stream<Uint8List> build(BroadcastConfig config);
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
