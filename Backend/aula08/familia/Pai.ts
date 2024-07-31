export class Pai{
    name:string
    age:number
    hair:string

    constructor(name:string, age:number, hair:string){
        this.name = name
        this.age = age
        this.hair = hair
    }

    eat():void{
        console.log(`${this.name} is eating`)
    }
}