//
//  ViewController.swift
//  tabela-refeicoes
//
//  Created by Bruno Brito on 12/12/20.
//

import UIKit

class ViewController: UITableViewController {
    
    let refeicoes = ["churros", "macarrão", "feijão", "arroz" ]

    override func viewDidLoad() {
        super.viewDidLoad()
        print("tableviewcontroller foi carregado")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return refeicoes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        let refeicao = refeicoes[indexPath.row]
        
        celula.textLabel?.text = refeicao
        
        return celula
    }


}

