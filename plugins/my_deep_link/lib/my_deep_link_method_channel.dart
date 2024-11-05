import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'my_deep_link_platform_interface.dart';

/// An implementation of [MyDeepLinkPlatform] that uses method channels.
class MethodChannelMyDeepLink extends MyDeepLinkPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('my_deep_link');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
