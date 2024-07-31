import { Alimento } from "./Alimento";
import { Eletronico } from "./Eletronico";
import { Bebida } from "./Bebida";

const myAlimento:Alimento = new Alimento(`Banana`, `Alimento`, 5, 8)
const myEletronico:Eletronico = new Eletronico(`Geladeira`, `Eletronico`, 1000, 200)
const myBebida:Bebida = new Bebida(`Suco`, `Bebida`, 15, 2)

myEletronico.infos()
myBebida.mostraPreco()
myAlimento.calculaPrecoKg()
myAlimento.adicionaSacola()
