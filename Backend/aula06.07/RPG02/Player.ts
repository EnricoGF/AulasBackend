import { Enemy } from "./Enemy"

export class Player {
    playerName:string
    playerType:string
    playerStrength:number
    playerHealth:number

    constructor(name:string, type:string, strength:number){
        this.playerType = type
        this.playerName = name
        this.playerHealth = 100
        this.playerStrength = strength
    }

    playerTookDamageFunc(dano:number):number{
        return this.playerHealth -= dano
    }
    
    playerAttackEnemy(enemy:Enemy):string{
        enemy.enemyTookDamageFunc(this.playerStrength)
        return `${this.playerName} atacou ${enemy.enemyName}`
    }
}
