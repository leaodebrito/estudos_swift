//
//  ContentView.swift
//  TacoFancy
//
//  Created by Bruno Brito on 26/09/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var data = TacoData(baseLayer:BaseLayerData(name: "Taco base"), seasoning: SeasoningData(name: "Seasoning Name"))
    
    func getData() {
        let urlString = "http://taco-randomizer.herokuapp.com/random/"
        let url = URL(string: urlString)
        
        URLSession.shared.dataTask(with: url!) {data, _, error in
            DispatchQueue.main.async {
                
                if let data = data {
                    do{
                        let decoder = JSONDecoder()
                        let decodedData = try decoder.decode(TacoData.self, from: data)
                        self.data = decodedData
                    }catch{
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

