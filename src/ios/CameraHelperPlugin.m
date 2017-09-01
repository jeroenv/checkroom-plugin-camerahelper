//
//  CameraHelperPlugin.m
//  CameraHelperPlugin
// 
// Created by jeroen.verhoest on 01/09/17
//
//
#import "CameraHelperPlugin.h"

@implementation CameraHelperPlugin

- (void) hasFrontCamera:(CDVInvokedUrlCommand *)command {
    CDVPluginResult *pluginResult = [ CDVPluginResult
                                     resultWithStatus    : CDVCommandStatus_OK
                                     messageAsBool: [CDVbcsProcessor hasFrontCamera]
                                     ];
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

+(BOOL) hasFrontCamera
{
    try{
        NSArray *devices = [AVCaptureDevice devicesWithMediaType:AVMediaTypeVideo];
        for(AVCaptureDevice *camera in devices) {
            if([camera position] == AVCaptureDevicePositionFront) { // is front camera
                return YES;
            }
        }
        return NO;
    } catch (...) {
        return NO;
    }
}

@end