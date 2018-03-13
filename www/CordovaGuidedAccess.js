var exec = require('cordova/exec');

var PLUGIN_NAME = 'CordovaGuidedAccess';

var CordovaGuidedAccess = {
  guidedAccessMode: function(action, cb) {
    exec(cb, null, PLUGIN_NAME, 'guidedAccessMode', [action]);
  },
};

module.exports = CordovaGuidedAccess;
