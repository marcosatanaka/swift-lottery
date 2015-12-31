import UIKit

let numerosSorteados = [1, 2, 3, 4, 5, 6]

let numerosApostados = [[1, 2, 3, 4, 5, 6]
    , [12, 13, 14, 15, 16, 17]
    , [12, 13, 14, 15, 16, 17]
]

var apostaNro = 0
var qtdeAcertos = 0

for aposta in numerosApostados {
    apostaNro++
    print("Números acertados na aposta \(apostaNro):")
    
    for numeroApostado in aposta {
        for numeroSorteado in numerosSorteados {
            if numeroApostado == numeroSorteado {
                qtdeAcertos++
                print(numeroSorteado)
            }
        }
    }
    
    if (qtdeAcertos == 6) {
        print("Você ganhou!")
    } else {
        print("Você não ganhou!")
    }
    
    qtdeAcertos = 0
    print("")
}