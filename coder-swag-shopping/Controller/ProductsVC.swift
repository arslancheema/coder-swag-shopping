//
//  ProductsVC.swift
//  coder-swag-shopping
//
//  Created by Cheema Arslan Arshad on 2017/08/17.
//  Copyright © 2017 Cheema Arslan Arshad. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var productsCollections : UICollectionView!
    
    private(set) public var products = [Product]()
    override func viewDidLoad() {
        super.viewDidLoad()
        productsCollections.dataSource = self
        productsCollections.delegate = self

        // Do any additional setup after loading the view.
    }
    
    func initializeProducts(category : Category){
        products = DataService.instance.getProducts(forcategoryTitle: category.title)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell{
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }
        
        return ProductCell()
    }
    
}
