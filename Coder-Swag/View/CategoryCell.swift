//
//  CategoryCell.swift
//  Coder-Swag
//
//  Created by Youssef Wahba on 12/25/17.
//  Copyright © 2017 Youssef Wahba. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var CategoryImage : UIImageView!
    @IBOutlet weak var CategoryTitle : UILabel!
    
    func updateviews (category:Category){
        CategoryImage.image=UIImage(named:category.imageName)
        CategoryTitle.text=category.title
    }

}
