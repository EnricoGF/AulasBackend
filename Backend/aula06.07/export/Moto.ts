import { Carro } from "./Carro"

export class Moto{
    private motoMarca:string
    private motoCor:string
    private motoPotencia:number
    private motoVelocidade:number

    constructor(brand:string, color:string, power:number, speed:number){
        this.motoMarca = brand
        this.motoCor = color
        this.motoPotencia = power
        this.motoVelocidade = speed
    }

    //get e set marca
    getMarca():string{
        return this.motoMarca
    }
    setMarca(novaMarca:string):void{
        this.motoMarca = novaMarca
    }

    //get e set cor
    getCor():string{
        return this.motoCor
    }
    setCor(novaCor:string):void{
        this.motoCor = novaCor
    }

    //get e set potencia
    getPotencia():number{
        return this.motoPotencia
    }
    setPotencia(novaPotencia:number):void{
        if(this.motoPotencia > 0){
            this.motoPotencia = novaPotencia
        }
        else{
            console.log(`A potencia não pode ser 0 ou negativa.`)
        }
    }

    //get e set velocidade
    getVelocidade():number{
        return this.motoVelocidade
    }
    setVelocidade(novaVelocidade:number):void{
        if(this.motoVelocidade > 0){
            this.motoVelocidade = novaVelocidade
        }
        else{
            console.log(`A velocidade nao pode ser 0 ou negativa.`)
        }
    }

    //metodos
    grauMoto():void{
        console.log(`A moto da marca ${this.motoMarca} esta dando grau.`)
    }

    infosMoto():void{
        console.log(`A moto eh da marca ${this.motoMarca}, eh ${this.motoCor} e tem ${this.motoPotencia} de potencia.`)
    }

    comparaMarca(marca:Carro):void{
        console.log(`A moto eh da marca ${this.motoMarca} e o carro eh ${marca.getMarca()}.`)
    }
}
