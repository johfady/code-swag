//
//  Category.swift
//  Coder-Swag
//
//  Created by Youssef Wahba on 12/25/17.
//  Copyright © 2017 Youssef Wahba. All rights reserved.
//

import Foundation

struct Category {
    
    private(set) public var title : String
    private(set) public var imageName : String
    
    init(title : String, imageName : String) {
        self.title = title
        self.imageName = imageName
    }
  
}
