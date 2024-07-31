import { Moto } from "./Moto"

export class Carro{
    private carroMarca:string
    private carroCor:string
    private carroPotencia:number
    private carroVelocidade:number

    constructor(brand:string, color:string, power:number, speed:number){
        this.carroMarca = brand
        this.carroCor = color
        this.carroPotencia = power
        this.carroVelocidade = speed
    }

    //get e set marca
    getMarca():string{
        return this.carroMarca
    }
    setMarca(novaMarca:string):void{
        this.carroMarca = novaMarca
    }

    //get e set cor
    getCor():string{
        return this.carroCor
    }
    setCor(novaCor:string):void{
        this.carroCor = novaCor
    }

    //get e set potencia
    getPotencia():number{
        return this.carroPotencia
    }
    setPotencia(novaPotencia:number):void{
        if(this.carroPotencia > 0){
            this.carroPotencia = novaPotencia
        }
        else{
            console.log(`A potencia não pode ser 0 ou negativa.`)
        }
    }

    //get e set velocidade
    getVelocidade():number{
        return this.carroVelocidade
    }
    setVelocidade(novaVelocidade:number):void{
        if(this.carroVelocidade > 0){
            this.carroVelocidade = novaVelocidade
        }
        else{
            console.log(`A velocidade nao pode ser 0 ou negativa.`)
        }
    }

    //metodos
    aceleraCarro():void{
        console.log(`O carro da marca ${this.carroMarca} esta acelerando.`)
    }

    infosCarro():void{
        console.log(`O carro eh da marca ${this.carroMarca}, eh ${this.carroCor} e tem ${this.carroPotencia} de potencia.`)
    }

    comparaPotencia(potencia:Moto):void{
        console.log(`O carro tem ${this.carroPotencia}, a moto tem ${potencia.getPotencia()}.`)
    }
}
