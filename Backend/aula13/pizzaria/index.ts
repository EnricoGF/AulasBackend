import { Pizza } from "./Pizza";
import { SaborPizza } from "./SaborPizza";
import { Tamanho } from "./Tamanho";

const pizza1:Pizza = new Pizza(SaborPizza.sabor4, Tamanho.tamanho2, 50)
const pizza2:Pizza = new Pizza(SaborPizza.sabor1, Tamanho.tamanho3, 35)

console.log(pizza1.descricao())
console.log(pizza2.descricao())
