//
//  ContentView.swift
//  Alura Viagens
//
//  Created by Bruno Brito on 01/01/21.
//

import SwiftUI

struct ContentView: View {
    
    let paddingHorizontal: CGFloat = 30
    let paddingTopView: CGFloat = 50
    let raioQuinaBotao: CGFloat = 10
    let espacoEntreBotoes: CGFloat = 100
    
    var body: some View {
        
        
        GeometryReader{ view in
            
            //MARK: - VStack principal
            VStack{
                
                //MARK: - VStack Header
                VStack{
                    Text("Alura Viagens")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size: 20))
                        .padding(.top, paddingTopView)
                        
                    Text("ESPECIAL")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Book", size: 20))
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 20, alignment: .leading)
                        .padding(.horizontal, paddingHorizontal)
                    Text("BRASIL")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size: 20))
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 20, alignment: .leading)
                        .padding(.horizontal, paddingHorizontal)
                }
                .frame(width: view.size.width, height: 180, alignment: .top)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.purple/*@END_MENU_TOKEN@*/)
                
                
                
                //MARK: - botões
                HStack{
                    Button(action: {
                        print("apertaram o botão")
                    }, label: {
                        Text("Hotéis")
                            .font(.custom("Avenir Medium", size: 17))
                            .foregroundColor(Color.white)
                    })
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 10))
                    .background(Color.blue)
                    
                    Spacer()
                        .frame(width: espacoEntreBotoes)
                    
                    Button(action: {
                        print("apertaram o botão")
                    }, label: {
                        Text("Pacotes")
                            .font(.custom("Avenir Medium", size: 17))
                            .foregroundColor(Color.white)
                    })
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 10))
                    .background(Color.orange)
                    
                }
                .offset(y: -25)
                
                List{
                    Text("Rio de Janeiro")
                    Text("Ceará")
                    Text("Atibaia")
                    Text("Rio de Janeiro")
                    
                    
                }
            }
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
