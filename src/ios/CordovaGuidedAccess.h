#import <Cordova/CDVPlugin.h>

@interface CordovaGuidedAccess : CDVPlugin

- (void)setMode:(CDVInvokedUrlCommand*)command;
- (void)getStatus:(CDVInvokedUrlCommand*)command;

@end
