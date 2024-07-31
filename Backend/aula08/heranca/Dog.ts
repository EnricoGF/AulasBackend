import { Animal } from "./Animal";

export class Dog extends Animal {
    breed:string

    constructor(name:string, weigth:number, breed:string){
        super(name,weigth)
        this.breed = breed
    }

    bark():void{
        console.log(`Au au.`)
    }
}
