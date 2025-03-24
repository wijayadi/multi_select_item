import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'multi_select_item_platform_interface.dart';

/// An implementation of [MultiSelectItemPlatform] that uses method channels.
class MethodChannelMultiSelectItem extends MultiSelectItemPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('multi_select_item');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
