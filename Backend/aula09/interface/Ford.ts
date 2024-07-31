import { Car } from "./Car"

export class Ford implements Car{
    brand:string
    model:string
    year:number

    constructor(brand:string, model:string, year:number){
        this.brand = brand
        this.model = model
        this.year = year
    }

    startEngine(): void {
        console.log(`O carro modelo ${this.model} esta ligando`)
    }
}
