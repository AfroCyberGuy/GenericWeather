//
//  CurrentWeather.swift
//  WeatherApp
//
//  Created by Tatenda Kabike on 2019/11/30.
//  Copyright © 2019 Tatenda Kabike. All rights reserved.
//

import Foundation

struct CurrentWeather:  Decodable{
    
    var coord: Coord?
    var weather: [Weather]?
    var base: String?
    var main: Main?
    var visibility: Int?
    var wind: Wind?
    var clouds: Clouds?
    var dt: Int?
    var sys: Sys?
    var timezone: Int?
    var name: String?
    var cod: Int?
    
    private enum CodingKeys: String, CodingKey {
        
        case coord      = "coord"
        case weather    = "weather"
        case base       = "base"
        case main       = "main"
        case visibility = "visibility"
        case wind       = "wind"
        case clouds     = "clouds"
        case dt         = "dt"
        case sys        = "sys"
        case timezone   = "timezone"
        case name       = "name"
        case cod        = "code"
    }

}

// MARK: - Clouds
struct Clouds: Decodable{
    
    var all: Int?
    
    private enum CodingKeys: String, CodingKey {
        
        case all = "all"
        
    }
}

// MARK: - Coord
struct Coord: Decodable {
    
    var lat: Double?
    var lon: Double?
    
    private enum CodingKeys: String, CodingKey {

    case lat = "lat"
    case lon = "lon"
        
    }
}


// MARK: - Main
class Main: Decodable{
    
    var temp: Double?
    var pressure: Int?
    var humidity: Int?
    var tempMin: Double?
    var tempMax: Double?
    
    private enum CodingKeys: String, CodingKey {
        
    case temp      = "temp"
    case pressure  = "pressure"
    case humidity  = "humidity"
    case tempMin   = "temp_min"
    case tempMax   = "temp_max"

    }
    
}

// MARK: - Sys
class Sys: Decodable{
    
    var type: Int?
    var id: Int?
    var country: String?
    var sunrise: Int?
    var sunset: Int?
    
    private enum CodingKeys: String, CodingKey {
        
     case type     = "type"
     case id       = "id"
     case country  = "country"
     case sunrise  = "sunrise"
     case sunset   = "sunset"
        
    }
}

// MARK: - Weather
class Weather:Decodable{
    
    var id: Int?
    var main: String?
    var weatherDescription: String?
    var icon: String?
    
    
    private enum CodingKeys: String, CodingKey {
        
        case id                 = "id"
        case main               = "main"
        case weatherDescription = "description"
        case icon               = "icon"
        
    }
 
}

// MARK: - Wind
class Wind: Decodable{
    
    var speed: Double?
    var deg: Int?
    
   
    private enum CodingKeys: String, CodingKey {
        
      case speed = "speed"
      case deg   = "deg"
    }
    
    
}
