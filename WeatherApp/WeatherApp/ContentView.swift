//
//  ContentView.swift
//  WeatherApp
//
//  Created by Bruno Brito on 26/06/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var forecastViewModel: ForecastViewModel
    
    init() {
        self.forecastViewModel = ForecastViewModel()
    }
    
    
    var body: some View {
        ZStack{
            BackSplash()
            
            TextField("Enter city name", text: self.$forecastViewModel.cityName){
                self.forecastViewModel.searchCity()
            }
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
