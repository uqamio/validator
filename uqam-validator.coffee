path = require 'path'
validator = require 'validator'

validator.isDomaineUqam = (url) ->
  patternUqam = new RegExp("([a-z0-9\-]+[.])*uqam[.]ca$")
  return patternUqam.test(url)

validator.isCodePostalCanadien = (codePostal) ->
  console.log '-%s-', codePostal
  codePostalPattern = new RegExp('^[ABCEGHJKLMNPRSTVXY]{1}[0-9]{1}[A-Z]{1} [0-9]{1}[A-Z]{1}[0-9]{1}$')
  return codePostalPattern.test(codePostal)

validator.isCodePermanent =  (codePermanent) ->
  patternCodePermanent = new RegExp('^[A-Z]{4}(0[1-9]|[12][0-9]|3[01]|99)([0,5][1-9]|[1,6][012]|13)[0-9]{4}$');
  return patternCodePermanent.test(codePermanent)

validator.isNip = (nip) ->
  patternNip = new RegExp('^[0-9]{5}$');
  return patternNip.test(nip)

exports = module.exports = validator