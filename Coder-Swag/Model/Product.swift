//
//  Products.swift
//  Coder-Swag
//
//  Created by Youssef Wahba on 12/26/17.
//  Copyright © 2017 Youssef Wahba. All rights reserved.
//

import Foundation

struct Product {
    private(set) public var title:String
    private(set) public var price:String
    private(set) public var imagename:String
    init(title:String,price:String,imagename:String) {
        self.title = title
        self.price = price
        self.imagename = imagename
        
    }
}
