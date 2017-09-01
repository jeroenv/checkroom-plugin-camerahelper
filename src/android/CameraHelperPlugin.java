/*
 * PhoneGap is available under *either* the terms of the modified BSD license *or* the
 * MIT License (2008). See http://opensource.org/licenses/alphabetical for full text.
 *
 * Copyright (c) 2005-2010, Nitobi Software Inc.
 * Copyright (c) 2011, IBM Corporation
 */

package com.checkroom.plugin.camerahelper;

import org.json.JSONArray;

import android.content.Context;
import android.content.pm.PackageManager;

import org.apache.cordova.CallbackContext;
import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.PluginResult;

public class CameraHelperPlugin extends CordovaPlugin {

    @Override
    public boolean execute(String action, JSONArray args, CallbackContext callbackContext) {
        if (action.equals("hasFrontCamera")) {
            this.hasFrontCamera(callbackContext);
        }

        return true;
    }

    public synchronized void hasFrontCamera(final CallbackContext callbackContext) {
        PluginResult result;

        try{
            result = new PluginResult(PluginResult.Status.OK, this.cordova.getActivity().getApplicationContext().getPackageManager().hasSystemFeature(PackageManager.FEATURE_CAMERA_FRONT));
        } catch(Exception e){
            result = new PluginResult(PluginResult.Status.ERROR);
        }

        result.setKeepCallback(true);
        callbackContext.sendPluginResult(result);
    }
}