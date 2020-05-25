//
//  Category.swift
//  BMS Express Swag
//
//  Created by kamrujjaman Joy on 5/24/20.
//  Copyright © 2020 kamrujjaman Joy. All rights reserved.
//

import Foundation
struct Category {
    private(set) public var title: String
    private(set) public var imageName : String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
