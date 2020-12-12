//
//  SwiftUIViewController.swift
//  eggplant-brownie
//
//  Created by Bruno Brito on 28/11/20.
//

import SwiftUI

func adicionar(nome: String, felicidade: String){
    print("comi \(nome) e fiquei com felicidade: \(felicidade)")
}


struct SwiftUIViewController: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SwiftUIViewController_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewController()
    }
}
