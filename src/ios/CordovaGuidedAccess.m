#import "CordovaGuidedAccess.h"
#import <UIKit/UIKit.h>

@implementation CordovaGuidedAccess

- (void)setMode:(CDVInvokedUrlCommand*)command
{
    __block CDVPluginResult* pluginResult = nil;
    //[pluginResult setKeepCallbackAsBool:true];

    NSNumber* action = [command.arguments objectAtIndex:0];

    BOOL boolAction = [action boolValue] == YES ? YES : NO;
    //NSLog(@"test");
    UIAccessibilityRequestGuidedAccessSession(boolAction, ^(BOOL didSucceed) {
        if (didSucceed) {
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:didSucceed];
        }
        else {
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsBool:didSucceed];
        }
    });
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)getStatus:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsBool:UIAccessibilityIsGuidedAccessEnabled()];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
