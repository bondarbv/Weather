//
//  CurrentWeatherData.swift
//  Weather
//
//  Created by Bohdan on 09.05.2022.
//

import Foundation

struct CurrentWeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
    let sys: Sys
}

struct Main: Codable {
    let temp, feelsLike, tempMin, tempMax: Double
    
    enum CodingKeys: String, CodingKey {
        case temp
        case feelsLike = "feels_like"
        case tempMin = "temp_min"
        case tempMax = "temp_max"
    }
}

struct Weather: Codable {
    let id: Int
}

struct Sys: Codable {
    let country: String
}
