// YouTube: Cod3r Cursos - Programador JavaScript PRECISA DOMINAR essa TÉCNICA!

function composition(...funcs) {
    return function(value) {
        return funcs.reduce((acc, fn) => {
            return fn(acc)
        }, value)
    }
}

function scream(text) {
    return text.toUpperCase()
}

function emphase(text) {
    return `${text}!!!`
}

function makeSlow(text) {
    return text.split(``).join(` `)
}

const exagerated = composition(scream, emphase, makeSlow)
const almostExagerated = composition(scream, emphase)

console.log(almostExagerated('be careful with the hole'))
console.log(exagerated('stop'))