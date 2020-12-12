//
//  ContentView.swift
//  RollTheDice
//
//  Created by Bruno Brito on 21/11/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var rolledNumber = 1
    @State var rolledIt = false
    
    var body: some View {
        VStack{
            Image(rolledIt ? "\(rolledNumber)" : "unknown")
            .resizable()
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .aspectRatio(contentMode: .fit)
            .clipped()
            .padding(.top, 250)
            
        Spacer()
            
            Button(action:{
                print("Button Tapped")
                let randomNumber = Int.random(in: 1..<7)
                self.rolledNumber = randomNumber
                self.rolledIt = true
                print("\(rolledNumber)")
            }) {
               RollTheButtonContent()
            }
            
            .padding(.bottom,40)

    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct RollTheButtonContent: View{
    var body: some View{
        Text("Roll the dice")
            .frame(width: 240, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(.white)
            .font(.headline)
            .background(Color.orange)
            .cornerRadius(20)
    }
}
