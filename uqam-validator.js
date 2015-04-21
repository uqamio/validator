// Generated by CoffeeScript 1.9.2
(function() {
  var exports, path, validator;

  path = require('path');

  validator = require('validator');

  validator.isDomaineUqam = function(url) {
    var patternUqam;
    patternUqam = new RegExp("([a-z0-9\-]+[.])*uqam[.]ca$");
    return patternUqam.test(url);
  };

  validator.isCodePostalCanadien = function(data) {
    return new RegExp('^[ABCEGHJKLMNPRSTVXY]{1}[0-9]{1}[A-Z]{1} [0-9]{1}[A-Z]{1}[0-9]{1}$').test(data);
  };

  validator.isCodePermanent = function(data) {
    return new RegExp('^[A-Z]{4}(0[1-9]|[12][0-9]|3[01]|99)([0,5][1-9]|[1,6][012]|13)[0-9]{4}$').test(data);
  };

  validator.isNip = function(data) {
    return new RegExp('^[0-9]{5}$').test(data);
  };

  validator.isTelephoneNordAmericain = function(data) {
    return new RegExp('^[\(]?[0-9]{3}[\)]?[-. ]?[0-9]{3}[-. ]?[0-9]{4}$').test(data);
  };

  exports = module.exports = validator;

}).call(this);

//# sourceMappingURL=uqam-validator.js.map
