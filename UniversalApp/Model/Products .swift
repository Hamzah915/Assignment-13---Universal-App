//
//  Products .swift
//  UniversalApp
//
//  Created by Hamzah Azam on 19/04/2023.
//

import Foundation

struct Item: Decodable {
    let products: [Product]
}

struct Product:Decodable{
    let id:Int
    let title:String
    let description:String
    let price:Int
    let discountPercentage:Double
    let rating:Double
    let stock:Int
    let brand:String
    let category:String
    let thumbnail:String
    let images:[String]
}
