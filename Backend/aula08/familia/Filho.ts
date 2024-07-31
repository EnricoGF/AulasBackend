import { Pai } from "./Pai";

export class Filho extends Pai{
    eyes:string
    
    constructor(name:string,age:number, hair:string, eyes:string){
        super(name, age, hair)
        this.eyes = eyes
    }

    walk():void{
        console.log(`${this.name} is walking`)
    }
}
