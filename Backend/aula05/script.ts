/* /* //let array: Array<number> = [ 1, 2, 3 ]
let array: number[] = [ 1, 2, 3 ]

let person: {name: string, age: number} = {
    name:`enrico`,
    age: 19
}

function soma (a:number, b:number):number {
    return  a + b
}

function semReturn (nome:string):void {//quando não tem return usa void
    console.log(`Oi ${nome}`)
}

function frase (nome?: string):void {//parametro opcional
    console.log(`Oi ${nome || "world"}`)
}

function desconto (preco:number, desconto:number = 0.05):number {//se não passar um parametro p desconto sera o valor definido
    return preco * (1 - desconto)
}

class Cachorro {
    nome:string
    peso:number
    pelo:string
    raca:string

    constructor (dogNome:string, dogPeso:number, dogPelo:string, dogRaca:string) {
        this.nome = dogNome
        this.peso = dogPeso
        this.pelo = dogPelo
        this.raca = dogRaca
    }

    latir():void {
        console.log(`Au au`)
    }

    corre() {
        console.log(`${this.nome} esta correndo`)
    }

    comer():void {
        console.log(`${this.nome} esta comendo`)
    }
}

//instancias
const meuCachorro:Cachorro = new Cachorro(`Ziggy`, 10, `Preto`, `Vira-lata`)

//chama atributo
console.log(meuCachorro.nome)
//chama metodo
meuCachorro.comer()


class Coruja {
    nome:string
    cor:string
    voa:boolean
    chirria:boolean

    constructor (owlNome:string, owlCor:string, owlVoa:boolean, owlChirria:boolean) {
        this.nome = owlNome
        this.cor = owlCor
        this.voa = owlVoa
        this.chirria =owlChirria
    }

    voar():string {
        let corujaVoa:string = ``
        if (this.voa == true){
            corujaVoa= `A coruja esta voando`
        }
        else if (this.voa == false) {
            corujaVoa = `A coruja nao pode voar`
        }
        return corujaVoa
    }

    infos():string {
        return `O nome da coruja eh ${this.nome}, ela eh ${this.cor}, e ela voa: ${this.voa}`
    }

    som():string{
        let corujaChirria:string = ``
        if(this.chirria == true){
            corujaChirria = `A coruja esta chirriando`
        }
        else if (this.chirria == false) {
            corujaChirria = `A coruja nao pode chirriar`
        }
        return corujaChirria
    }
}

const minhaCoruja:Coruja = new Coruja(`Carlos`, `Branca`, false, true)

console.log(minhaCoruja.infos())
console.log(minhaCoruja.som())
console.log(minhaCoruja.voar())
 */
