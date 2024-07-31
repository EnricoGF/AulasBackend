export class Animal{
    name:string
    weigth:number

    constructor(name:string, weigth:number){
        this.name = name
        this.weigth = weigth
    }

    eat(quantity:number):void{
        console.log(`The animal has eaten ${quantity} pieces of meat`)
    }
}