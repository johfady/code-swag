//
//  DataService.swift
//  Coder-Swag
//
//  Created by Youssef Wahba on 12/25/17.
//  Copyright © 2017 Youssef Wahba. All rights reserved.
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
    private let hoodies = [
    Product(title: "Devslopes logo Hoodie Grey", price: "$32", imagename: "hoodie01.png"),
    Product(title: "Devslopes logo Hoodie Red", price: "$32", imagename: "hoodie02.png"),
    Product(title: "Devslopes  Hoodie Grey", price: "$32", imagename: "hoodie03.png"),
    Product(title: "Devslopes  Hoodie Black", price: "$32", imagename: "hoodie04.png")
    
    
    ]
    
    private let hats = [
    Product(title: "Devslopes Logo Graphic Beanie", price: "$18", imagename:"hat01.png" ),
    Product(title: "Devslopes Logo hat Black", price: "$22", imagename: "hat02.png"),
        Product(title: "Devslopes logo hat white", price: "$22", imagename: "hat03.png"),
        Product(title: "Devslopes Logo Snapback", price: "$20", imagename: "hat04.png")
    ]
    
    private let shirt = [
    Product(title: "Devslopes Logo Shirt Black", price: "$18", imagename: "shirt01.png"),
        Product(title: "Devslopes Bagde Light Grey", price: "$19", imagename: "shirt02.png"),
        Product(title: "Devslopes Logo Shirt Red", price: "$18", imagename: "shirt03.png"),
        Product(title: "Hustle Delegate Grey", price: "$18", imagename: "shirt04.png"),
        Product(title: "Kicklip Studiios Black", price: "$18", imagename: "shirt05.png")
    ]
    
    private let digitalGoods=[Product]()
    
    
    func getCategories() ->[Category] {
       return categories
    }
    
    func getproducts(forCategoryTitle title:String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return gethats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    func  gethats() -> [Product] {
        return hats
    }
    
    func  getHoodies() -> [Product] {
        return hoodies
    }
    
    func  getShirts() -> [Product] {
        return shirt
    }
    

    func  getDigitalGoods() -> [Product] {
        return digitalGoods
    }
    
    
    
    
    
    
}
