cordova.define('cordova/plugin_list', function(require, exports, module) {
module.exports = [
    {
        "id": "com.charls.MyPlugin.MyPlugin",
        "file": "plugins/com.charls.MyPlugin/www/MyPlugin.js",
        "pluginId": "com.charls.MyPlugin",
        "clobbers": [
            "com.charls.MyPlugin"
        ]
    }
];
module.exports.metadata = 
// TOP OF METADATA
{
    "cordova-plugin-whitelist": "1.3.2",
    "com.charls.MyPlugin": "0.0.1"
};
// BOTTOM OF METADATA
});