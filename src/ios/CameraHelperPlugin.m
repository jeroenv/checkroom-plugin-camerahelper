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
                                     messageAsBool: [UIImagePickerController isCameraDeviceAvailable: UIImagePickerControllerCameraDeviceFront]
                                     ];
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}


@end