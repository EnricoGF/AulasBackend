import { Person } from "./Person";

class Father extends Person{
    constructor(children:number){
        super(children)
    }

    falar():void{
        this.howManyChildren
    }
}

const novoPai:Father = new Father(4)
novoPai.falar()
