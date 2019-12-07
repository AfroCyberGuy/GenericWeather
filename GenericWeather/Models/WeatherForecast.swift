//
//  WeatherForecast.swift
//  WeatherApp
//
//  Created by Tatenda Kabike on 2019/11/30.
//  Copyright © 2019 Tatenda Kabike. All rights reserved.
//

import Foundation


struct WeatherForecast: Decodable{
    
    var cod: String?
    var message: Int?
    var cnt: String?
    var list: [List]?
    var city: City?
    
    private enum CodingKeys: String, CodingKey {
        
        case cod     =  "cod"
        case message =  "message"
        case cnt     =  "cnt"
        case list    =  "list"
        case city    =  "city"
        
    }

}


struct City: Decodable{
    
    var id: Int?
    var name: String?
    var coord: Coordinates?
    var country: String?
    var timezone: Int?
    var sunrise: Int?
    var sunset: Int?
    
    private enum CodingKeys: String, CodingKey {
     
        case id        =  "id"
        case name      =  "name"
        case coord     =  "coord"
        case country   =  "country"
        case timezone  =  "timezone"
        case sunrise   =  "sunrise"
        case sunset    =  "sunset"
        
    }
}


class Coordinates: Decodable{
    
    var lat: Double?
    var lon: Double?
    
    private enum CodingKeys: String, CodingKey {
       
        case lat = "lat"
        case lon = "lon"
        
    }
}

struct List: Decodable{
    
    var dt: Int?
    var main: MainClass?
    var weather: [ForeWeather]?
    var clouds: ForeCloud?
    var wind: ForeWind?
    var sys: ForeSys?
    var dt_txt: String?

    private enum CodingKeys: String, CodingKey {
     
        case dt       =  "dt"
        case main     =  "main"
        case weather  =  "weather"
        case clouds   =  "clouds"
        case wind     =  "wind"
        case sys      =  "sys"
        case dt_txt   =  "dt_txt"
        
    }
}

struct MainClass: Decodable{
    
    var temp: Double?
    var temp_min: Double?
    var temp_max: Double?
    var pressure: Int?
    var sea_level: Int?
    var grnd_level: Int?
    var humidity: Int?
    var temp_kf: Int?
    
    private enum CodingKeys: String, CodingKey {
        
        case temp        = "temp"
        case temp_min    = "temp_min"
        case temp_max    = "temp_max"
        case pressure    = "pressure"
        case sea_level   = "sea_level"
        case grnd_level  = "grnd_level"
        case humidity    = "humidity"
        case temp_kf     = "temp_kf"
        
    }
}

struct Rain: Decodable{
    
    var threeH: Double?
    
    private enum CodingKeys: String, CodingKey {
        
        case threeH = "3h"
        
    }
    
}

class ForecastSys: Decodable{
    
    var sys: String?
    
    private enum CodingKeys: String, CodingKey {
        
        case sys = "sys"
        
    }
}

struct  ForeWeather: Decodable{
    
    var id: Int?
    var main: String?
    var description: String?
    var icon: String?
    
    
    private enum CodingKeys: String, CodingKey {
       
        case id           =  "id"
        case main         =  "main"
        case description  =  "description"
        case icon         =  "icon"
        
    }
}

struct ForeCloud: Decodable{
    
    var all: Int?
    
    private enum CodingKeys: String, CodingKey {
        
        case all = "all"
        
    }
}

struct ForeWind: Decodable{
    
    var speed: Double?
    var deg: Int?
    
    private enum CodingKeys: String, CodingKey {
     
        case speed  =  "speed"
        case deg    =  "deg"
    }
}

struct ForeSys: Decodable{
    
    var pod: String?
    
    private enum CodingKeys: String, CodingKey {
     
         case pod = "pod"
        
    }
}




