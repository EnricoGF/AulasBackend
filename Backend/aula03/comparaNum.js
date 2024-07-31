const readlineSync = require('readline-sync')

const num1 = Number (readlineSync.question('Insira um numero: '))
const num2 = Number (readlineSync.question('Insira outro numero: '))
const num3 = Number (readlineSync.question('Insira outro numero: '))

 maiorNumero = num1

if (num1 > num2 && num1 > num3) {
    maiorNumero = num1
}

else if (num2 > num1 && num2 > num3) {
    maiorNumero = num2
}

else if (num3 > num1 && num3 > num2) {
    maiorNumero = num3
}

console.log (`O maior numero é: ${maiorNumero}`)
