/********* MyPlugin.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface MyPlugin : CDVPlugin {
  // Member variables go here.
}

- (void)coolMethod:(CDVInvokedUrlCommand*)command;
@end

@implementation MyPlugin

- (void)coolMethod:(CDVInvokedUrlCommand*)command
{

	[self showAlert];

    CDVPluginResult* pluginResult = nil;
    NSString* echo = [command.arguments objectAtIndex:0];

    if (echo != nil && [echo length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)showAlert {
	UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"恭喜你，调用插件成功了!" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:cancelAction];
    [alert addAction:sureAction];
    [self.viewController presentViewController:alert animated:YES completion:nil];
}

@end
