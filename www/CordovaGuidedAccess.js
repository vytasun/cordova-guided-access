var exec = require('cordova/exec');

exports.guidedAccessMode = function (arg0, success, error) {
    exec(success, error, 'CordovaGuidedAccess', 'guidedAccessMode', [arg0]);
};
