/*
const readlineSync = require('readline-sync')

const num1 = Number(readlineSync.question('Insira uma nota: '))
const num2 = Number(readlineSync.question('Insira outra nota: '))
const num3 = Number(readlineSync.question('Insira outra nota: '))

const media = (num1 + num2 + num3)/3

console.log(`Media: ${media}`)

////////////////////////////////////////////////////////////////////////

const readlineSync = require('readline-sync')

const num1 = Number(readlineSync.question('Insira um numero: '))
const num2 = Number(readlineSync.question('Insira outro numero: '))

igual = num1 === num2
diferente = num1 !== num2
maior = num1 > num2
maiorIgual = num1 >= num2
menor = num1 < num2
menorIgual = num1<= num2

console.log(`Igual: ${igual}\nDiferente: ${diferente}\nMaior: ${maior}\nMaior ou igual: ${maiorIgual}\nMenor: ${menor}\nMenor ou igual: ${menorIgual}`)
*/

const listaCachorro = [`Vira-lata`, `Beagle`, `Pitbull`, `Dobberman`, `Golden Retriever`, `Border Collie`]
const readlineSync = require('readline-sync')

console.log(listaCachorro)
const indiceLista = Number(readlineSync.question('Escolha uma raca de 1 a 6 : '))

console.log(`Raca escolhida: ${listaCachorro[indiceLista-1]}`)
