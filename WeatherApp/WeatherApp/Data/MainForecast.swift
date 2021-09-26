//
//  MainForecast.swift
//  WeatherApp
//
//  Created by Bruno Brito on 26/06/21.
//

import Foundation
import SwiftUI

//MARK: - Estruturas da temperatura
// O nome das estruturas foram estabelecidas por mim
// No entanto, os campos (variáveis) da estrutura e seus respectivos nomes devem ser identicos ao JSON que será utilizado




//MARK: - Estrutura do tempo do dia
struct ForecastWeatherResponse: Decodable {
    var city: City?
    var cod: String?
    var message: Double?
    var cnt: Int?
    var list: [MainForecastParams]?
}

//MARK: - Estrutura do Clima do dia
struct MainForecastParams: Decodable {
    var dt: Int?
    var temp: Temp?
    var pressure: Double?
    var humidity: Int?
    var weather: [Weather]?
    var speed: Double?
    var deg: Int?
    var clouds: Int?
}

//MARK: - Estrutura da Temperatura do dia
struct Temp: Decodable {
    var day: Double?
    var min: Double?
    var max: Double?
    var night: Double?
    var eve: Double?
    var morn: Double?
}

//MARK: - Estrutura da cidade
struct City: Decodable {
    var id: Int?
    var name: String?
    var coord: Coord?
    var country: String?
    var population: Int?
    var timazone: Int?
    
}

//MARK: - Estrutura das coordenadas
struct Coord: Decodable {
    var long: Double?
    var lat: Double?
}

//MARK: - Estrutura do clima
struct Weather: Decodable {
    var id: Int?
    var main: String?
    var description: String?
    var icon: String?
    
}
