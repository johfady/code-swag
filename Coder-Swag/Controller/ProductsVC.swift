//
//  ProductVC.swift
//  Coder-Swag
//
//  Created by Youssef Wahba on 12/26/17.
//  Copyright © 2017 Youssef Wahba. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource{
 

    @IBOutlet weak var productcollection :UICollectionView!
    
    
    private(set) public var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        productcollection.dataSource = self
        productcollection.delegate = self
    }

 
    func initproducts(category:Category){
        products = DataService.instance.getproducts(forCategoryTitle: category.title)
        navigationItem.title=category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
           let product=products[indexPath.row]
            cell.updateviews(product: product)
            return cell
        }
         return ProductCell()
    }
   
    
    
    
}
