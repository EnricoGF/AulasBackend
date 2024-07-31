/* for(let cont:number = 10; cont>=0; cont--){
    console.log(cont)
    if(cont % 2 == 0 && cont !== 0){
        console.log(`TIC`)
    }
    else if(cont !== 0){
        console.log(`TAC`)
    }
    else if(cont==0){
        console.log(`BOOM`)
    }
} */

//////////////////////////////////////////////////

/* let ficcao = {
    "Fundacao": "Isaac Asimov",
    "Duna": "Frank Herbert"
}

for(let livro in ficcao){
    console.log(`Autor do livro "${livro}": ${ficcao[livro]}`)
} */

//////////////////////////////////////////////////

/* let meusLivros = [ `Fundacao`, `Duna`, `Orgulho e Preconceito` ]

for(let livro of meusLivros){
    console.log(livro)
} */

//////////////////////////////////////////////////

/* let frutas = [ `Uva`, `Pera`, `Banana` ]

for(let fruta of frutas){
    console.log(fruta)
} */

//////////////////////////////////////////////////

let frutas = [ `Uva`, `Carambola`, `Mirtilo` ]

frutas.forEach((fruta, index, array) => {
    console.log(`${index+1}. Eu gosto de ${fruta}`)
    console.log(`Lista de frutas: ${array}`)
})

