path = require 'path'
validator = require 'validator'

validator.isDomaineUqam = (url) ->
  patternUqam = new RegExp("([a-z0-9\-]+[.])*uqam[.]ca$")
  return patternUqam.test(url)

validator.isCodePostalCanadien = (data) ->
  return new RegExp('^[ABCEGHJKLMNPRSTVXY]{1}[0-9]{1}[A-Z]{1} [0-9]{1}[A-Z]{1}[0-9]{1}$').test(data)

validator.isCodePermanent = (data) ->
  return new RegExp('^[a-zA-Z]{4}[0-9]{6}(?:[0-9]{2})?$').test(data)

validator.isNip = (data) ->
  return new RegExp('^[0-9]{5}$').test(data)

validator.isTelephoneNordAmericain = (data) ->
  return new RegExp('^[\(]?[0-9]{3}[\)]?[-. ]?[0-9]{3}[-. ]?[0-9]{4}$').test(data)

exports = module.exports = validator