/*
let tipoString:string = `string`
let tipoNumber:number = 10
let tipoBoolean:boolean = true

console.log(`string: ${tipoString}, number: ${tipoNumber}, booblean: ${tipoBoolean}`)
*/

import * as readlineSync from 'readline-sync';

const nome:string = (readlineSync.question('Insira seu nome: '))
const idade:number = Number((readlineSync.question('Insira sua idade: ')))
const perguntaTemCarteira:string = (readlineSync.question('Voce tem carteira de motorista? Y/N: ')).toUpperCase()
let temCarteira:boolean = false

if(perguntaTemCarteira === `Y`){
    temCarteira = true
}
else if(perguntaTemCarteira === `N`){
    temCarteira = false
}

function podeDirigir(myNome:string, myIdade:number, myTemCarteira:boolean):void{
    if(myIdade>=18 && myTemCarteira == true){
        console.log(`${myNome}, voce pode dirigir`)
    }
    else{
        console.log(`${myNome}, voce nao pode dirigir`)
    }
}

podeDirigir(nome, idade, temCarteira)