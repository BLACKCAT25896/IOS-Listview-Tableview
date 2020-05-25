//
//  ViewController.swift
//  BMS Express Swag
//
//  Created by kamrujjaman Joy on 5/24/20.
//  Copyright © 2020 kamrujjaman Joy. All rights reserved.
//

import UIKit

class CategoryVC: UIViewController , UITableViewDataSource, UITableViewDelegate{
    
    
    @IBOutlet weak var categorieTable : UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
        
        categorieTable.dataSource = self
        categorieTable.delegate = self
        
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? Categorycell{
            let category = DataService.instance.getCategories()[indexPath.row]
            
            cell.updateViews(category: category)
            return cell
            
            
        }else{
            return Categorycell()
        }
        
        
    }


}

