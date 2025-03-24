import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'multi_select_item_method_channel.dart';

abstract class MultiSelectItemPlatform extends PlatformInterface {
  /// Constructs a MultiSelectItemPlatform.
  MultiSelectItemPlatform() : super(token: _token);

  static final Object _token = Object();

  static MultiSelectItemPlatform _instance = MethodChannelMultiSelectItem();

  /// The default instance of [MultiSelectItemPlatform] to use.
  ///
  /// Defaults to [MethodChannelMultiSelectItem].
  static MultiSelectItemPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MultiSelectItemPlatform] when
  /// they register themselves.
  static set instance(MultiSelectItemPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
