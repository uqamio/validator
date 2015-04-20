uqamValidator = require  './uqam-validator'

console.log('Code postal valide H2L 2C4 : ', uqamValidator.isCodePostalCanadien('H2L 2C4') )
console.log('Code postal invalide H2L 2C4 : ', !uqamValidator.isCodePostalCanadien('H2L 2C'))

console.log('Domaine UQAM : ', uqamValidator.isDomaineUqam('unsite.uqam.ca'))
console.log('Pas domaine UQAM : ', !uqamValidator.isDomaineUqam('www.perdu.com'))

console.log('Code permanent : ', uqamValidator.isCodePermanent('CONQ01010106'))
console.log('Pas code permanent : ', !uqamValidator.isCodePermanent('GJ456789sdsa'))

console.log('Bon nip : ', uqamValidator.isNip('12345'))
console.log('Mauvais nip : ', !uqamValidator.isNip('12547845'))