import UIKit

let numerosSorteados = [1, 2, 3, 4, 5, 6].sort(<)

let numerosApostados = [
      [01, 02, 03, 04, 05, 06]
    , [12, 13, 14, 15, 16, 17]
    , [12, 13, 14, 15, 16, 17]
]

// Dentro da lista de pares contém algum par cujo primeiro elemento é diferente do segundo
func acertouTodosNumeros (lhs: [Int], rhs: [Int]) -> Bool {
    return lhs.count == rhs.count && !zip(lhs, rhs).contains { $0 != $1 }
}

for aposta in numerosApostados {
    if (acertouTodosNumeros(aposta.sort(<), rhs: numerosSorteados)) {
        print("Ganhou!")
    } else {
        print("Não ganhou!")
    }
}
