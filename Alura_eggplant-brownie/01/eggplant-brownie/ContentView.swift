//
//  ContentView.swift
//  eggplant-brownie
//
//  Created by Bruno Brito on 28/11/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var nomeAlimento: String
    @State var intensidadeFelicidade: String
    
    var body: some View {
        VStack(alignment: .center){
            HStack{
                Text("Nome")
                    .bold()
                TextField("Ex: Macarrão", text: $nomeAlimento)
            }
            .padding()
            HStack{
                Text("Felicidade:")
                    .bold()
                TextField("1 - 5", text: $intensidadeFelicidade)
                    .keyboardType(.numberPad)
            }
            .padding()
            
            Button(action:{
                print("apertaram o botão")
                adicionar(nome: String(self.nomeAlimento), felicidade: String(self.intensidadeFelicidade))
            }) {
                Text("Adicionar")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(nomeAlimento: "", intensidadeFelicidade: "")
    }
}
