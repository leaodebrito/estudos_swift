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
    
    //Identifica o tamanho da tela do dispositivo (se iPhone ou iPad, por exemplo) e permite a configuração de tamanho de fontes de acordo com o dispositivo (CHECAR HUMAN INTERFACE GUIDELINES - SIZE CLASS)
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    
    
    var body: some View {
        
        
        GeometryReader{ view in
            
            //MARK: - VStack principal
            VStack{
                
                //MARK: - VStack Header
                VStack{
                    Text("Alura Viagens")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size: self.horizontalSizeClass == .compact ? 20 : 30))
                        .padding(.top, paddingTopView)
                        
                    Text("ESPECIAL")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Book", size: self.horizontalSizeClass == .compact ? 20 : 30))
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 20, alignment: .leading)
                        .padding(.horizontal, paddingHorizontal)
                    Text("BRASIL")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size: self.horizontalSizeClass == .compact ? 23 : 33))
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 20, alignment: .leading)
                        .padding(.horizontal, paddingHorizontal)
                }
                .frame(width: view.size.width, height: 200, alignment: .top)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.purple/*@END_MENU_TOKEN@*/)
                
                
                
                //MARK: - botões
                HStack{
                    Button(action: {
                        print("apertaram o botão")
                    }, label: {
                        Text("Hotéis")
                            .font(.custom("Avenir Medium", size: self.horizontalSizeClass == .compact ? 17 : 24))
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
                            .font(.custom("Avenir Medium", size: self.horizontalSizeClass == .compact ? 17 : 24))
                            .foregroundColor(Color.white)
                    })
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 10))
                    .background(Color.orange)
                    
                }
                .offset(y: -25)
                
                List(viagens){ viagem in
                    VStack(alignment: .leading){
                        Text(viagem.titulo)
                        Image(viagem.imagem)
                            .resizable()
                            .frame(height: 125)
                        HStack{
                            Text(viagem.quantidadeDeDias)
                            Spacer()
                            Text(viagem.valor)
                        }
                        
                    }
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
