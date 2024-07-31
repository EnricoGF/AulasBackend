import { Moto } from "./Moto";
import { Carro } from "./Carro";

const carroInstance:Carro = new Carro(`Fiat`, `vermelho`, 150, 80)
const motoInstance:Moto = new Moto(`BMW`, `preto`, 180, 120)

motoInstance.grauMoto()
carroInstance.comparaPotencia(motoInstance)
motoInstance.comparaMarca(carroInstance)

console.log(carroInstance.getCor())

console.log(carroInstance.getVelocidade())
carroInstance.setVelocidade(140)
console.log(carroInstance.getVelocidade())

console.log(motoInstance.getVelocidade())
motoInstance.setVelocidade(170)
console.log(motoInstance.getVelocidade())
