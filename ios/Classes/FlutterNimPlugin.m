#import "FlutterNimPlugin.h"
#import <nim_flutter/nim_flutter-Swift.h>

@implementation FlutterNimPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterNIMPlugin registerWithRegistrar:registrar];
}
@end
