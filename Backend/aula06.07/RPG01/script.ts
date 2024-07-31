class Player {
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

class Enemy{
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

const enemyInstance:Enemy = new Enemy(`Zumbi`)
const playerInstance:Player = new Player(`Enrico`, `Mage`, 12)
