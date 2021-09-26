//
//  Service.swift
//  WeatherApp
//
//  Created by Bruno Brito on 26/06/21.
//

import Foundation
import SwiftUI

class Services {
    
    // ID da API que cede os dados do tempo
    let apiID = "b9ff607930b1617564e291e59fa7083"
    
    //Função para coletar os dados da API
    ///Permite a passagem do nome da cidade como String e O completion que é o conjunto de dados da API que vem por JSON
    func getWeatherData(city: String, completion: @escaping (ForecastWeatherResponse?) -> ()){
        
        ///Definição da URL com o link para acessar a API.
        ///Passagem da cidade e do ID da API
        guard let url = URL(string:"http://api.openweathermap.org/data/2.5/forecast/daily?q=\(city)&cnt=7&appid=\(apiID)=metric") else { completion(nil)
            return
        }
        ///URLSession é a classe responsável por gerenciar requisições à internet
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            
            let weatherResponse = try? JSONDecoder().decode(ForecastWeatherResponse.self, from: data)
            print("data: \(weatherResponse!)")
            
            if let weatherResponse = weatherResponse {
                completion(weatherResponse)
            }else{
                completion(nil)
            }
        }.resume()
        
    }
}
