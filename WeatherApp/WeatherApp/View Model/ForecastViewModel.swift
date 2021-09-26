//
//  ForecastViewModel.swift
//  WeatherApp
//
//  Created by Bruno Brito on 26/06/21.
//

import Combine
import SwiftUI


class ForecastViewModel: ObservableObject {
    
    var weatherServices: Services!
    var cityName: String = "Boston"
    
    @Published var weatherForecast = ForecastWeatherResponse()
    
    init() {
        self.weatherServices = Services()
    }
    
    func searchCity() {
        if let city = self.cityName.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed){
            fetchWeatherForecast(by: city)
        }
    }
    
    func fetchWeatherForecast(by city: String){
        self.weatherServices.getWeatherData(city: cityName) {
            forecast in
            if let forecast = forecast {
                DispatchQueue.main.async {
                    self.weatherForecast = forecast
                }
            }
        }
    }

}
