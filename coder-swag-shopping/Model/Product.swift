//
//  File.swift
//  coder-swag-shopping
//
//  Created by Cheema Arslan Arshad on 2017/08/17.
//  Copyright © 2017 Cheema Arslan Arshad. All rights reserved.
//

import Foundation

struct Product {
    
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    init(title: String, price: String, imageName: String) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }
    
}

