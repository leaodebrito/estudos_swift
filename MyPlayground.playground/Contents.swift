

//
//  Quantification.swift
//  Projeto_Candela
//
//  Created by Bruno Brito on 15/11/20.
//

import SwiftUI
import UIKit

struct Quantification: View {
    
    @ObservedObject var usuario = Usuario()
    
    //Identificar estado do tema - DarkMode ou LightMode
    @Environment(\.colorScheme) var colorScheme
    
    //Booleana para mostra da sheet view
    @State var showSheetView = false

    let escalaCard: CGFloat = 2.5
    let espacamentoHorizontal: CGFloat = 20
    
    
    
    
    var body: some View {
        GeometryReader{ geometry in
            NavigationView{
                ScrollView{
                    VStack(alignment: .leading){
                        
                        
                        
                        
                        //MARK: - Grupo Divisória
                        Group{
                            Text("Divisórias")
                                .font(.title)
                                .bold()
                            HStack{
                                NavigationLink(destination: Alvenaria()){
                                    botaoTelaPrincipal2(cor1: .blue, cor2: .blue, imagem: "Alvenaria", descricao1: "Divisória ", descricao2: "Alvenaria", alturaSimbolo: 55, larguraSimbolo: 65, alturaCard: geometry.size.width/escalaCard, larguraCard: geometry.size.width/escalaCard)
                                        .padding(.trailing)
                                }
                            }
                        }
                        .padding(.bottom)
                        
                        
                        Divider()
                        //MARK: - Grupo Revestimento de Parede
                        Group{
                            Text("Acabamentos de Parede")
                                .font(.title)
                                .bold()
                            HStack{
                                NavigationLink(destination: Reboco()){
                                    botaoTelaPrincipal2(cor1: Color(#colorLiteral(red: 0.502635479, green: 0.8260932565, blue: 0.2874923348, alpha: 1)), cor2: Color(#colorLiteral(red: 0.502635479, green: 0.8260932565, blue: 0.2874923348, alpha: 1)), imagem: "RevestimentoParede", descricao1: "Argamassa", descricao2: "Reboco", alturaSimbolo: 65, larguraSimbolo: 50, alturaCard: geometry.size.width/escalaCard, larguraCard: geometry.size.width/escalaCard)
                                        .padding(.trailing)
                                }
                                
                                NavigationLink(destination: RevestimentoDeParede()){
                                    botaoTelaPrincipal2(cor1: Color(#colorLiteral(red: 0.502635479, green: 0.8260932565, blue: 0.2874923348, alpha: 1)), cor2: Color(#colorLiteral(red: 0.502635479, green: 0.8260932565, blue: 0.2874923348, alpha: 1)), imagem: "RevestimentoParede", descricao1: "Revestimento ", descricao2: "Cerâmico", alturaSimbolo: 65, larguraSimbolo: 50, alturaCard: geometry.size.width/escalaCard, larguraCard: geometry.size.width/escalaCard)
                                        .padding(.trailing)
                                }
                                
                            }
                            .padding(.bottom)
                            
                            HStack{
                                NavigationLink(destination: Pintura()){
                                    botaoTelaPrincipal2(cor1: Color(#colorLiteral(red: 0.502635479, green: 0.8260932565, blue: 0.2874923348, alpha: 1)), cor2: Color(#colorLiteral(red: 0.502635479, green: 0.8260932565, blue: 0.2874923348, alpha: 1)), imagem: "RevestimentoParede", descricao1: "Acabamento", descricao2: "Pintura", alturaSimbolo: 65, larguraSimbolo: 50, alturaCard: geometry.size.width/escalaCard, larguraCard: geometry.size.width/escalaCard)
                                        .padding(.trailing)
                                }
                                
                            }
                        }
                        .padding(.bottom)
                        
                        ScrollView(.horizontal){
                            HStack(spacing: 32){
                               
                                
                                GeometryReader{ proxy in
                                    NavigationLink(destination: Reboco()){
                                        
                                        let scale = getScale(proxy: proxy)
                                        BotaoQuantidades(larguraCard: 200,alturaCard: 200, imagem: "RevestimentoParede", larguraImagem: 100, alturaImagem: 120, titulo: "Reboco")
                                            .scaleEffect(CGSize(width: scale, height: scale))//aplica o efeito de escala nas imagens
                                            
                                    }
                                }
                                
                                .frame(width: 200, height: 200)
                                
                                GeometryReader{ proxy in
                                    NavigationLink(destination: RevestimentoDeParede()){
                                        
                                        let scale = getScale(proxy: proxy)
                                        BotaoQuantidades(larguraCard: 200,alturaCard: 200, imagem: "RevestimentoParede", larguraImagem: 100, alturaImagem: 120, titulo: "Cerâmica")
                                            .scaleEffect(CGSize(width: scale, height: scale))//aplica o efeito de escala nas imagens
                                        
                                    }
                                }
                                
                                .frame(width: 200, height: 200)
                                
                                GeometryReader{ proxy in
                                    NavigationLink(destination: Pintura()){
                                        
                                        let scale = getScale(proxy: proxy)
                                        BotaoQuantidades(larguraCard: 200,alturaCard: 200, imagem: "RevestimentoParede", larguraImagem: 100, alturaImagem: 120, titulo: "Pintura")
                                            .scaleEffect(CGSize(width: scale, height: scale))//aplica o efeito de escala nas imagens
                                        
                                    }
                                }
                                
                                .frame(width: 200, height: 200)
                                
                                
                            }
                            .padding(.vertical, 32)
                            .padding(.horizontal)
                        }
                        
                        Divider()
                        //MARK: - Revestimento de Piso
                        Group{
                            Text("Acabamentos de Piso")
                                .font(.title)
                                .bold()
                            HStack{
                                NavigationLink(destination: Pintura()){
                                    botaoTelaPrincipal2(cor1: Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)), cor2: Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)), imagem: "RevestimentoPiso", descricao1: "Argamassa", descricao2: "Contra piso", alturaSimbolo: 60, larguraSimbolo: 75, alturaCard: geometry.size.width/escalaCard, larguraCard: geometry.size.width/escalaCard)
                                        .padding(.trailing)
                                }
                                
                                NavigationLink(destination: RevestimentoDePiso()){
                                    botaoTelaPrincipal2(cor1: Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)), cor2: Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)), imagem: "RevestimentoPiso", descricao1: "Revestimento ", descricao2: "Cerâmico", alturaSimbolo: 56, larguraSimbolo: 75, alturaCard: geometry.size.width/escalaCard, larguraCard: geometry.size.width/escalaCard)
                                        .padding(.trailing)
                                }
                                
                            }
                            .padding(.bottom)
                            
                        }
                    }
                    .padding(.leading)
                    .padding(.bottom)
                    
                }
                .navigationTitle("Quantidades")
                
            }
            
        }
    }
    
}






struct Quantification_Previews: PreviewProvider {
    static var previews: some View {
        Quantification()
    }
}


func getScale(proxy: GeometryProxy) -> CGFloat{
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



struct BotaoQuantidades: View {
    
    @State var larguraCard: CGFloat
    @State var alturaCard: CGFloat
    
    @State var imagem: String
    @State var larguraImagem: CGFloat
    @State var alturaImagem: CGFloat
    
    @State var titulo: String
    
    
    var body: some View{
        
        ZStack{
            RoundedRectangle(cornerRadius: 15)
                .frame(width: larguraCard, height: alturaCard, alignment: .center)

            
            VStack(alignment: .center){
                Image(imagem)
                    .resizable()
                    .frame(width: larguraImagem, height: alturaImagem, alignment: .center)
                    .foregroundColor(.white)
                    .padding(.top)
                    .animation(.easeInOut(duration: 1)) //esse atributo faz efeito na imagem quando retorna para a tela
            
                Spacer()
//                    .scaleEffect(CGSize(width: scale2, height: scale2))//aplica o efeito de escala nas imagens
                    
                    Text("Reboco")
                        .bold()
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding(.bottom, 15)
                
                
            }
            .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
        }
        
        
    }
}
