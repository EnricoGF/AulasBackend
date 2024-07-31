import { Filho } from "./Filho";

export class Neto extends Filho{
    weigth:number

    constructor(name:string, age:number, hair:string, eyes: string, weigth:number){
        super(name, age, hair, eyes)
        this.weigth = weigth
    }

    run():void{
        console.log(`${this.name} is runing`)
    }
}
