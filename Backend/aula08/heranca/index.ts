import { Animal } from "./Animal";
import { Dog } from "./Dog";
import { Owl } from "./Owl";

const myAnimal:Animal = new Animal(`Davi`, 56)
const MyDog:Dog = new Dog(`Ziggy`, 14, `Border collie`)
const myOwl:Owl = new Owl(`Carlos`, 4)

myAnimal.eat(6)
MyDog.bark()
myOwl.fly()
