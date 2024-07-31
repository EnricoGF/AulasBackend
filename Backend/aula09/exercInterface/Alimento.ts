import { Produto } from "./Produto";

export class Alimento implements Produto{
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

    calculaPrecoKg(): void {
        console.log(`O preco do kg de ${this.nome} eh ${this.peso/this.preco}`)
    }
}
