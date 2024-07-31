import { Produto } from "./Produto";

export class Eletronico implements Produto{
    nome:string
    tipo:string
    preco:number
    peso:number

    constructor(nome:string, tipo:string, preco:number, peso:number){
        this.nome = nome
        this.tipo = tipo
        this.preco = preco
        this.peso = peso
    }

    adicionaSacola():void {
        console.log(`${this.nome} foi adicionada a sacola`)
    }

    infos():void{
        console.log(`Nome: ${this.nome}, Tipo: ${this.tipo}, Preco: ${this.preco}, Peso: ${this.peso}`)
    }
}
