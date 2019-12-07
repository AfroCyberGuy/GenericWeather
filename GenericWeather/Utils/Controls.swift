//
//  Controls.swift
//  WeatherApp
//
//  Created by Tatenda Kabike on 2019/11/30.
//  Copyright © 2019 Tatenda Kabike. All rights reserved.

import UIKit

class Controls {

    // MARK:- CREATING LABEL
   
    static func theLabel(title: String, fontSize: CGFloat, fontColor: UIColor) -> UILabel {
        
        let label: UILabel = {
            
            let lb = UILabel()
            lb.translatesAutoresizingMaskIntoConstraints = false
            lb.font = lb.font.withSize(fontSize)
            lb.textColor = fontColor
            lb.text = title
            
            return lb
        }()
        
        return label
    }
}

