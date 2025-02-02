import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'my_widgets_platform_interface.dart';

/// An implementation of [MyWidgetsPlatform] that uses method channels.
class MethodChannelMyWidgets extends MyWidgetsPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('my_widgets');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
