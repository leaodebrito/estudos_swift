//
//  ContentView.swift
//  Alura Viagens
//
//  Created by Bruno Brito on 01/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Alura Viagens")
            Text("ESPACIAL")
            Text("BRAZIL")
            
            List{
                Text("Rio de Janeiro")
                Text("Ceará")
                Text("Atibaia")
                Text("Rio de Janeiro")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
