//
//  DataService.swift
//  BMS Express Swag
//
//  Created by kamrujjaman Joy on 5/24/20.
//  Copyright © 2020 kamrujjaman Joy. All rights reserved.
//

import Foundation
class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
        
    ]
    func getCategories() -> [Category] {
        return categories
    }
}
