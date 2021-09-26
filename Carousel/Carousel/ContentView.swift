//
//  ContentView.swift
//  Carousel
//
//  Created by Bruno Brito on 24/07/21.
//

import SwiftUI

struct ContentView: View {
    
    private func getScale(proxy: GeometryProxy) -> CGFloat{
        var scale: CGFloat = 1
        
        //Essa constante faz a leitura da localização da imagem para aplicar a escala
        let x = proxy.frame(in: .global).minX
        
        //Calculo para definição da escala
        let diff = abs(x)
        if diff < 100 {
            scale = 1 + (100 - diff) / 500
        }
        
        return scale
    }
    
    var body: some View {
        NavigationView{
            ScrollView{
                
                //Cria o scroll horizontal
                ScrollView(.horizontal){
                    //Cria a Stack pro scroll horizontal
                    HStack(spacing: 50){
                        
                        //Defini a quantidade de elementos no scroll horizontal
                        ForEach(0..<20) {num in
                            
                            //Lê a geometria da tela para dar a escala ao elemento do HStack horizontal
                            GeometryReader{ proxy in
                                //Navigation link leva para outra tela
                                NavigationLink(
                                    destination: Image("mortalKombat"),
                                    label: {
                                        Text("Navigate")
                                        //Criacao de constante com funcao que defini a escala da imagem
                                        let scale = getScale(proxy: proxy)
                                        
                                        VStack{
                                            
                                            Image("mortalKombat")
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width:150)
                                                .clipped()
                                                .cornerRadius(5)
                                                .shadow(radius: 4)
                                                .scaleEffect(CGSize(width: scale, height: scale))//aplica o efeito de escala nas imagens
                                                .animation(.easeInOut(duration: 1)) //esse atributo faz efeito na imagem quando retorna para a tela
                                            
                                            Text("Mortal")
                                                .padding(.top)
                                                .scaleEffect(CGSize(width: scale, height: scale))//aplica o efeito de escala no texto
                                                .foregroundColor(Color(.label))
                                        }
                                    })
                            }
                            .frame(width: 120, height: 300)
                        }
                        
                    }
                    .padding(32)
                }
                
            }
            .navigationTitle("Movies Carousel")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
