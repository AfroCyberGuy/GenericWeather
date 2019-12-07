//
//  SmartRESTHelper.swift
//  Sample
//
//  Created by mac pro on 1/28/19.
//  Copyright © 2019 Handsome. All rights reserved.
//

import Foundation

class SmartRESTHelper {

     static func getWeatherData<T: Decodable>(url: String, completion: @escaping (T, NSError?) -> ()){
        
        let url = URL(string: url)
        
        print("URL: \(url!)")
        
        URLSession.shared.dataTask(with: url!){(data,  response, err) in
            
            guard let data = data else {return}
            do{
                print("JSON RESPONSE: \(String(data: data, encoding: .utf8)!)")
                let obj = try JSONDecoder().decode(T.self, from: data)
                completion(obj, err as NSError?)
                
            }catch let jsonErr{
                
                print("Failed to decode json:", jsonErr)
            }
        }.resume()
        
    }
    
}
