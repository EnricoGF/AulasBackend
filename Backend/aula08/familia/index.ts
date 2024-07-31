import { Pai } from "./Pai";
import { Filho } from "./Filho";
import { Neto } from "./Neto";

const myPai:Pai = new Pai(`Jose`, 75, `preto`)
const myFilho:Filho = new Filho(`Ze`, 48, `preto`, `azul`)
const myNeto:Neto = new Neto(`Zezinho`, 21, `marrom`, `verde`, 68)

myPai.eat()
myFilho.walk()
myNeto.run()
