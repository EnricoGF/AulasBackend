import { Player } from "./Player"

export class Enemy{
    enemyName:string
    enemyStregth:number
    enemyHealth:number

    constructor(name:string){
        this.enemyName = name
        this.enemyHealth = 10
        this.enemyStregth = 50
    }

    enemyTookDamageFunc(dano:number):number{
        return this.enemyHealth -= dano
    }

    enemyAttackPlayer(player:Player):string{
        player.playerTookDamageFunc(this.enemyStregth)
        return `${this.enemyName} atacou ${player.playerName}`
    }
}
