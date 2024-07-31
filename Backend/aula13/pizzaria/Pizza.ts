import { SaborPizza } from "./SaborPizza"
import { Tamanho } from "./Tamanho"

export class Pizza{
    pizzaSabor:SaborPizza
    tamanho:Tamanho
    preco:number

    constructor(mySabor:SaborPizza, myTamanho:Tamanho, myPreco:number){
        this.pizzaSabor = mySabor
        this.tamanho = myTamanho
        this.preco = myPreco
    }

    descricao():string{
        return `Sabor da pizza: ${this.pizzaSabor}; Tamanho: ${this.tamanho}; Preco: R$ ${this.preco}`
    }
}