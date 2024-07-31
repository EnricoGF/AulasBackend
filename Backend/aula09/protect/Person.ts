export class Person{
    protected children:number

    constructor(children:number){
        this.children = children 
    }

    protected howManyChildren():void{
        console.log(`This person has ${this.children} children.`)
    }
}
