//
//  ContentView.swift
//  TacoFancy
//
//  Created by Bruno Brito on 26/09/21.
//

import SwiftUI

struct ContentView: View {
    
    ///Variável da tela que traz a estrutura dos dados para que as informações trazidas pela API sejam apresentadas na tela
    ///São inseridos Placheholders para que sejam apresentados antes das informações serem chamadas
    @State var data = TacoData(baseLayer:BaseLayerData(name: "Taco base"), seasoning: SeasoningData(name: "Seasoning Name"))
    
    ///Função para puxar os dados da API
    func getData() {
        ///Criação de string com o HTTP da API
        let urlString = "http://taco-randomizer.herokuapp.com/random/"
        ///Transforamção da string com o HTTP em uma URL para o swift entender
        let url = URL(string: urlString)
        
        ///Criação de uma session para puxar os dados
        URLSession.shared.dataTask(with: url!) {data, _, error in
            ///O DispatchQueue faz com que haja um atraso na coleta dos dados
            DispatchQueue.main.async {
                ///If let verifica se há dados a serem puxados, se houverem DO, se não houverem CATCH
                if let data = data {
                    do{
                        ///Se houver dados, a função vai decodificar os dados obtidos
                        let decoder = JSONDecoder()
                        ///Decodifica os dados vindos da API com a estrutura TadoData criada
                        let decodedData = try decoder.decode(TacoData.self, from: data)
                        self.data = decodedData
                    }catch{
                        ///Se der erro a função vai apresentar a mensagem abaixo
                        print("Error! Alguma coisa deu errada")
                    }
                }
            }
        }.resume()
    }
    
    
    var body: some View {
        VStack{
            Button(action: {
                self.getData()
            }, label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 200, height: 50)
                    Text("Atualizar informações")
                        .foregroundColor(.white)
                }
            })
            
            Text("\(data.baseLayer.name)")
                .bold()
            
            Text("\(data.seasoning.name)")
        }
    }
}

