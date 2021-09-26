//
//  TacoData.swift
//  TacoFancy
//
//  Created by Bruno Brito on 26/09/21.
//

import Foundation

struct TacoData: Decodable{
    var baseLayer: BaseLayerData
    var seasoning: SeasoningData
    
    ///Usamos enum para ajustar o nome da variável de entrada do JSON
    ///Vem do padrão do python para o padrão do swiftui
    enum CondingKeys: String, CodingKey {
        case baseLayer = "base_layer"
        case seasoning
    }
    
}


struct BaseLayerData: Decodable{
    var name: String
    
}


struct SeasoningData: Decodable{
    var name: String
    
}
