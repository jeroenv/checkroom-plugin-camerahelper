//
//  CameraHelperPlugin.h
//  CameraHelperPlugin
//
// 	Created by jeroen.verhoest on 01/09/17
//

#import <Cordova/CDV.h>

@interface CameraHelperPlugin : CDVPlugin

- (void)hasFrontCamera:(CDVInvokedUrlCommand*)command;

@end