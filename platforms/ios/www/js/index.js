function callMyPlugin() {
    console.log('...');
    com.charls.MyPlugin.coolMethod('ccc', function success() {
        
    }, function failure() {

    });
}