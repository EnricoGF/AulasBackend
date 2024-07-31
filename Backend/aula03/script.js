/*
const readlineSync = require('readline-sync')

function comparaZero(){
    const num = Number(readlineSync.question('Insira um numero: '))

    if(num=0){
        console.log(`O numero ${num} eh igual a 0`)
    }

    if(num>0){
        console.log(`O numero ${num} eh maior que 0`)
    }

    if(num>0){
        console.log(`O numero ${num} eh menor que 0`)
    }
}
///////////////////////////////////////////////////////////////////

function confereSenha(){
    senhaDefinida = `1234`
    const senha = (readlineSync.question('Insira a senha: '))

    if(senha===senhaDefinida){
        console.log(`Login bem-sucecedido.`)
    }
    else{
        console.log(`Senha incorreta.`)
    }
}

//////////////////////////////////////////////////////////////////

function calculaNum(){
    const num1 = Number(readlineSync.question('Insira um numero: '))
    const num2 = Number(readlineSync.question('Insira outro numero: '))
    const operacao = (readlineSync.question('Insira uma operacao: (soma, subtracao, multiplicacao, divisao)')).toUpperCase()

    if(operacao===`SOMA`){
        let soma= num1 + num2
        console.log(`Resultado: ${soma}`)
    }

    else if(operacao===`SUBTRACAO`){
        let subtracao= num1 + num2
        console.log(`Resultado: ${subtracao}`)
    }

    else if(operacao===`MULTIPLICACAO`){
        let multiplicacao= num1 + num2
        console.log(`Resultado: ${multiplicacao}`)
    }

    else if(operacao===`DIVISAO`){
        let divisao= num1 + num2
        console.log(`Resultado: ${divisao}`)
    }

    else{
        console.log(`Operacao invalida.`)
    }
}

function comparaNum(){
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
    
}

const funcRequest = Number(readlineSync.question('Insira o numero da funcao: '))

switch (funcRequest) {
    case 1:
        console.log(`Funcao compara zero`)
        comparaZero()
        break
    case 2:
        console.log(`Funcao confere senha`)
        confereSenha()
        break
    case 3:
        console.log(`Funcao calcula num`)
        calculaNum()
        break
    case 4:
        console.log(`Funcao compara num`)
        comparaNum()
        break
    default:
        console.log(`Funcao invalida`)
}
*/
////////////////////////////////////////////////////////////////////
/*
for (let cont = 1; cont <= 10; cont++) {
    console.log(`Contagem: ${cont}\nMultiplicacao: ${cont*5}`)
}
*/
////////////////////////////////////////////////////////////////////

const readlineSync = require('readline-sync')

const num = Number (readlineSync.question('Insira um numero: '))

for(let cont = 1; cont <= 10; cont++){
    console.log(`Contagem: ${cont}\nMultiplicacao: ${num*cont}`)
}