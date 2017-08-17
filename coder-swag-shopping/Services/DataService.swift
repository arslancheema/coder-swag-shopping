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
    Category(title: "SHIRTS", imageName: "shirts.png"),
    Category(title: "HOODIES", imageName: "hoodies"),
    Category(title: "HATS", imageName: "hats.png"),
    Category(title: "DIGITAL", imageName: "digital.png"),
    Category(title: "Shirts", imageName: "shirts.png")
    ]
    
    private let hats = [
    Product(title: "Developers Logo", price: "$18", imageName: "hat01.png"),
    Product(title: "Developers Logo Black Hat", price: "$18", imageName: "hat02.png"),
    Product(title: "Developers White Hat", price: "$22", imageName: "hat03.png"),
    Product(title: "Developers Grey Hat", price: "$24", imageName: "hat04.png"),
    Product(title: "Developers Grey Simple", price: "$24", imageName: "hat01.png")
    ]
    private let hoodies = [
        Product(title: "Developers Logo hooodies", price: "$18", imageName: "hoodie01.png"),
        Product(title: "Developers Logo Black hooodies", price: "$18", imageName: "hoodie02.png"),
        Product(title: "Developers White hooodies", price: "$22", imageName: "hoodie03.png"),
        Product(title: "Developers Grey hooodies", price: "$24", imageName: "hoodie04.png"),
        Product(title: "Developers Simple", price: "$24", imageName: "hoodie01.png")
        ]
    private let shirts = [
        Product(title: "Developers Logo shirt", price: "$28", imageName: "shirt01.png"),
        Product(title: "Developers Logo Black shirt", price: "$14", imageName: "shirt02.png"),
        Product(title: "Developers White shirt", price: "$33", imageName: "shirt03.png"),
        Product(title: "Developers Grey shirt", price: "$24", imageName: "shirt04.png"),
        Product(title: "Developers Logo Black shirt", price: "$14", imageName: "shirt02.png")
        ]
    // In swift we have to explicitely declare type in empty array.
    private let digitalProducts = [Product]()
    
    
    func getCategories() -> [Category]  {
        return categories
    }
    func getProducts(forcategoryTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS":
             return getShirts()
        case "HOODIES":
            return getHoodies()
        case "HATS":
            return getHats()
        case "DIGITAL":
             return getShirts()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    func getShirts() -> [Product] {
        return shirts
    }
    func getHoodies() -> [Product] {
        return hoodies
    }
    func getDigitalGoods() -> [Product] {
        return digitalProducts
    }
    
}
