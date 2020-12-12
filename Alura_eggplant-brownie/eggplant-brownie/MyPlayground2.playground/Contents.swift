import UIKit


class Refeicao {
    var nome: String? = "Macarrão"
    var felicidade: String? = "5"
}

let refeicao = Refeicao()


func exibeNomeDaRefeicao() {
    if let nome = refeicao.nome{
        print(nome)
    }
    
    guard let nome2 = refeicao.nome else{
        return
    }
    
    print(nome2)
    
}
