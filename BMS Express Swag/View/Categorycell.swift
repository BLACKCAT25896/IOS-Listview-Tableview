//
//  Categorycell.swift
//  BMS Express Swag
//
//  Created by kamrujjaman Joy on 5/24/20.
//  Copyright © 2020 kamrujjaman Joy. All rights reserved.
//

import UIKit

class Categorycell: UITableViewCell {
    
    @IBOutlet weak var categoryImage : UIImageView!
    @IBOutlet weak var categoryTitle : UILabel!
    
    func updateViews(category : Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }
    

   

}
