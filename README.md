# checkroom-plugin-camerahelper


# Camera helper plugin for Cordova/PhoneGap 4.0 (iOS and Android)

## Installation

1) Make sure that you have [Node](http://nodejs.org/) and [Cordova CLI](https://github.com/apache/cordova-cli) or [PhoneGap's CLI](https://github.com/mwbrooks/phonegap-cli) installed on your machine.

2) Add a plugin to your project using Cordova CLI:

```bash
cordova plugin add https://github.com/jeroenv/checkroom-plugin-camerahelper
```
Or using PhoneGap CLI:

```bash
phonegap local plugin remove "com.checkroom.plugin.camerahelper"
phonegap local plugin add https://github.com/jeroenv/checkroom-plugin-camerahelper
```

## Usage

```js
window.plugins.cameraHelperPlugin.hasFrontCamera(function(hasFrontCamera){
	console.log("cameraHelperPlugin hasFrontCamera", hasFrontCamera);  
});
```