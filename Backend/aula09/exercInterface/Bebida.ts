import { Produto } from "./Produto";

export class Bebida implements Produto{
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

    adicionaSacola(): void {
        console.log(`${this.nome} foi adicionada a sacola`)
    }

    mostraPreco():void{
        console.log(`Preco: ${this.preco}`)
    }
}
