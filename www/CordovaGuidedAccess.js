var exec = require('cordova/exec');

var PLUGIN_NAME = 'CordovaGuidedAccess';

var CordovaGuidedAccess = {
  setMode: function(action, cb) {
    exec(cb, null, PLUGIN_NAME, 'setMode', [action]);
  },
  getStatus: function(action, cb) {
    exec(cb, null, PLUGIN_NAME, 'getStatus', []);
  },
};

module.exports = CordovaGuidedAccess;
