//
//  DataService.swift
//  coder-swag-shopping
//
//  Created by Cheema Arslan Arshad on 2017/08/14.
//  Copyright © 2017 Cheema Arslan Arshad. All rights reserved.
//

import Foundation


class DataService {
    
    // Singleton pattern. One copy of memory.
    static let instance = DataService()
    
    private let categories = [
    Category(title: "Shirts", imageName: "shirts.png"),
    Category(title: "Hoodies", imageName: "hoodies"),
    Category(title: "Hats", imageName: "hats.png"),
    Category(title: "Digital", imageName: "digital.png"),
    Category(title: "Shirts", imageName: "shirts.png")
    ]
    
    func getCategories() -> [Category]  {
        return categories
    }
    
}
