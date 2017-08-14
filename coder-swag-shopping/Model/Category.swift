//
//  Category.swift
//  coder-swag-shopping
//
//  Created by Cheema Arslan Arshad on 2017/08/14.
//  Copyright © 2017 Cheema Arslan Arshad. All rights reserved.
//

import Foundation

class Category {
    // private for setting
    private(set) public var title : String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
    
}
