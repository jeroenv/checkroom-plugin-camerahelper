var exec = require('cordova/exec');

function CameraHelperPlugin() {
}

CameraHelperPlugin.prototype.hasFrontCamera = function(callback){
  	exec(function(val){ callback(val); }, function(){ callback(false); }, "CameraHelperPlugin", "hasFrontCamera", []);
}

var cameraHelperPlugin = new CameraHelperPlugin();
module.exports = cameraHelperPlugin;

// Make plugin work under window.plugins
if (!window.plugins) {
    window.plugins = {};
}
if (!window.plugins.cameraHelperPlugin) {
    window.plugins.cameraHelperPlugin = cameraHelperPlugin;
}