//
//  Products.swift
//  Coder-Swag
//
//  Created by Youssef Wahba on 12/26/17.
//  Copyright © 2017 Youssef Wahba. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productimage:UIImageView!
    @IBOutlet weak var producttile:UILabel!
    @IBOutlet weak var productprice:UILabel!
    
    func updateviews(product:Product){
        productimage.image=UIImage(named:product.imagename)
        producttile.text=product.title
        productprice.text=product.price
    }
    
}

